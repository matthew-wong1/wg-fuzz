struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, true, true, false, true, true, true, false, true, true, false, true, false, false, false, false, true, false, true, false, true, false, false, true, false, false, true, false);

var<private> global1: f32;

var<private> global2: f32 = 1000f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = (u_input.a.x | select(arg_0, 26158i, global0[_wgslsmith_index_u32(4294967295u, 30u)])) >> ((_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(21123u, 45455u), vec2<u32>(1u, 17578u)), 1u), ~_wgslsmith_add_u32(0u, 91569u)) << (~1u % 32u)) % 32u);
    var_0 = arg_0;
    global0 = array<bool, 30>();
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(489f, -333f, -181f, 165f))))));
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f * _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-var_1.x), true))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global2 = 113f;
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 1u, 52442u), arg_3.x | 120198u), 30u)]), !(!(any(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_3.x, 30u)], global0[_wgslsmith_index_u32(9097u, 30u)])) || select(global0[_wgslsmith_index_u32(arg_3.x, 30u)], global0[_wgslsmith_index_u32(arg_3.x, 30u)], global0[_wgslsmith_index_u32(arg_3.x, 30u)]))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(822f, 461f) + _wgslsmith_f_op_f32(max(-270f, 131f))), -196f))), _wgslsmith_f_op_f32(856f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(679f + -1034f))), -952f))), 458f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.a, global0[_wgslsmith_index_u32(4387u, 30u)])))))));
    var_0 = !(!vec3<bool>(var_0.x | all(vec2<bool>(global0[_wgslsmith_index_u32(arg_3.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])), true, var_1.x >= -302f));
    global1 = 791f;
    return Struct_1(_wgslsmith_clamp_i32(0i, arg_1, 1i) >> (arg_3.x % 32u), vec2<i32>(_wgslsmith_div_i32(-arg_2.a, -1i), _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(-2331i, arg_1))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(7944i, u_input.a.xx);
    global2 = 1038f;
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_1 = -2147483647i;
    return Struct_1(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.a, -1i, ~9311i, 1i)), -max(firstLeadingBit(vec4<i32>(2147483647i, 15127i, u_input.a.x, arg_1)), -vec4<i32>(arg_2.b.x, var_1, 2147483647i, 84658i))), vec2<i32>(-1i) * -arg_2.b);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = func_4(func_2(Struct_1(_wgslsmith_clamp_i32(u_input.a.x >> (10048u % 32u), _wgslsmith_sub_i32(u_input.a.x, 1i), -u_input.a.x), ~u_input.a.wy << (vec2<u32>(0u, 19864u) % vec2<u32>(32u))), -1i, Struct_1((6410i & u_input.a.x) << (4294967295u % 32u), u_input.a.wz), ~abs(~vec3<u32>(1u, 1u, 0u))), select(1i, -(~(~17739i)), global0[_wgslsmith_index_u32(~(select(4294967295u, 4294967295u, true) | _wgslsmith_mod_u32(1u, 4294967295u)), 30u)]), func_2(func_2(func_2(func_2(Struct_1(0i, u_input.a.xy), u_input.a.x, Struct_1(u_input.a.x, vec2<i32>(2147483647i, u_input.a.x)), vec3<u32>(3364u, 54502u, 1u)), u_input.a.x, func_2(Struct_1(32973i, u_input.a.yy), u_input.a.x, Struct_1(1i, u_input.a.xy), vec3<u32>(27619u, 49914u, 11422u)), select(vec3<u32>(0u, 1408u, 52588u), vec3<u32>(4294967295u, 67375u, 67040u), true)), _wgslsmith_sub_i32(i32(-1i) * -19394i, ~1i), func_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, 2147483647i)), 1i, func_2(Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, 0i)), u_input.a.x, Struct_1(47486i, u_input.a.zx), vec3<u32>(13522u, 7130u, 4294967295u)), vec3<u32>(1u, 0u, 0u)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 57617u, 0u), vec3<u32>(1u, 50083u, 23626u), vec3<u32>(0u, 31396u, 8259u)))), _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.zx)), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -12093i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.xz))), Struct_1(~0i, vec2<i32>(u_input.a.x, -9866i)), ~select(vec3<u32>(0u, 30345u, 58569u), vec3<u32>(1u, 78267u, 27446u), vec3<bool>(false, true, false)) & vec3<u32>(~1u, 69445u, ~72590u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~max(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 1u)), vec2<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(66029u, 22745u), vec2<u32>(188789u, 40533u))), ~73703u)), 30u)];
    let var_2 = func_2(Struct_1(~(~var_0.b.x) >> (_wgslsmith_mod_u32(64808u, 1u) % 32u), _wgslsmith_mod_vec2_i32(var_0.b, ~select(var_0.b, vec2<i32>(2147483647i, var_0.b.x), global0[_wgslsmith_index_u32(975u, 30u)]))), _wgslsmith_add_i32((var_0.b.x | firstLeadingBit(22379i)) >> (abs(_wgslsmith_sub_u32(23715u, 1u)) % 32u), firstTrailingBit(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(var_0.a, var_0.a)))), func_4(func_4(var_0, _wgslsmith_dot_vec4_i32(abs(u_input.a), abs(u_input.a)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))), func_2(func_2(func_4(var_0, var_0.a, var_0, arg_0), abs(var_0.b.x), func_4(var_0, var_0.a, var_0, arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 9836u, 1u), vec3<u32>(1u, 1u, 4294967295u))), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(12603i, u_input.a.x)), var_0, max(vec3<u32>(0u, 1u, 47895u), vec3<u32>(1u, 1u, 1u))).b.x, Struct_1(37114i, vec2<i32>(~1i, firstTrailingBit(-1i))), _wgslsmith_f_op_f32(trunc(arg_0))), vec3<u32>(1u, _wgslsmith_add_u32(1u, min(~28373u, _wgslsmith_dot_vec3_u32(vec3<u32>(25701u, 5184u, 4294967295u), vec3<u32>(4294967295u, 47343u, 81275u)))), 4294967295u));
    let var_3 = vec2<u32>(1u, 1u);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + -1136f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1150f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(594f + 1354f) * -1222f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1498f * -1286f)), _wgslsmith_f_op_f32(f32(-1f) * -1301f)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-193f * var_0) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)))))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(673f))))))) - var_0);
    let var_1 = func_2(func_2(Struct_1(1i, -vec2<i32>(u_input.a.x, 61809i)), _wgslsmith_sub_i32(14828i, _wgslsmith_clamp_i32(2147483647i, u_input.a.x, -2147483647i) << (~78205u % 32u)), func_2(Struct_1(_wgslsmith_mult_i32(u_input.a.x, -44737i), u_input.a.ww), _wgslsmith_dot_vec4_i32(~u_input.a, firstTrailingBit(vec4<i32>(2147483647i, u_input.a.x, 48109i, u_input.a.x))), func_2(Struct_1(u_input.a.x, u_input.a.xy), firstLeadingBit(-1i), Struct_1(-1i, u_input.a.wx), vec3<u32>(38629u, 51259u, 65209u)), vec3<u32>(_wgslsmith_div_u32(1998u, 8462u), _wgslsmith_add_u32(52096u, 0u), ~30367u)), ~vec3<u32>(358u, ~1u, ~32327u)), -43900i, Struct_1(~10238i, u_input.a.ww), vec3<u32>(24110u, ~countOneBits(1u), 1u));
    global1 = _wgslsmith_f_op_f32(-147f + _wgslsmith_f_op_f32(-var_0));
    var var_2 = Struct_1(countOneBits(countOneBits(2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 47964i), _wgslsmith_mod_vec2_i32(~_wgslsmith_mult_vec2_i32(var_1.b, vec2<i32>(0i, var_1.a)), ~vec2<i32>(u_input.a.x, 2147483647i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-968f * 348f) * var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(749f, _wgslsmith_f_op_f32(f32(-1f) * -419f)), vec4<f32>(_wgslsmith_f_op_f32(-var_0), 942f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(select(-963f, _wgslsmith_f_op_f32(sign(-447f)), any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 30u)]))))));
}

