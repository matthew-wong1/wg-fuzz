struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 32> = array<u32, 32>(65699u, 128246u, 22632u, 31540u, 1u, 4294967295u, 2765u, 0u, 0u, 44950u, 1u, 4294967295u, 0u, 0u, 4294967295u, 31081u, 1u, 6745u, 73211u, 47619u, 30825u, 0u, 15087u, 1u, 4294967295u, 1u, 4294967295u, 45686u, 826u, 4294967295u, 51976u, 569u);

var<private> global2: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1086f, -215f)), _wgslsmith_f_op_f32(global0.d.x - -394f)))));
    global2 = abs(reverseBits(select(vec4<i32>(global2.x, -global0.b, _wgslsmith_add_i32(u_input.a, u_input.a), arg_0.b), arg_2, vec4<bool>(arg_0.a, any(vec2<bool>(global0.a, true)), global0.a, false))));
    var var_1 = vec4<bool>(!global0.a, all(!vec4<bool>(arg_0.a && global0.a, any(vec3<bool>(global0.a, false, true)), true, true)), true || all(!(!vec3<bool>(arg_0.a, false, true))), true);
    let var_2 = Struct_2(vec4<i32>(-_wgslsmith_mod_i32(min(global0.b, global0.b), _wgslsmith_div_i32(arg_2.x, 0i)), 18408i, _wgslsmith_clamp_i32(global0.b, global0.b, _wgslsmith_mult_i32(1i, arg_0.b)) >> (arg_0.c.x % 32u), abs(1i)), select(countOneBits(vec3<i32>(arg_0.b >> (0u % 32u), firstTrailingBit(-14891i), ~(-1i))), arg_2.zyx, !vec3<bool>(var_1.x, any(vec4<bool>(false, var_1.x, true, true)), true)), Struct_1(all(select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(global0.a, true, false), true), select(vec3<bool>(true, var_1.x, false), var_1.yzw, vec3<bool>(global0.a, true, arg_0.a)), !vec3<bool>(true, global0.a, arg_0.a))), firstTrailingBit(_wgslsmith_clamp_i32(29418i, ~(-2147483647i), 1i)), abs(arg_0.c), _wgslsmith_f_op_vec3_f32(arg_3.xxy * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -1689f, global0.d.x))))));
    global0 = arg_0;
    return select(global1[_wgslsmith_index_u32(firstTrailingBit((_wgslsmith_clamp_u32(global0.c.x, 0u, 30912u) << (abs(global0.c.x) % 32u)) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(6603u, var_2.c.c.x), vec2<u32>(arg_0.c.x, 4294967295u)) ^ global0.c.x) % 32u)), 32u)], _wgslsmith_mod_u32(firstTrailingBit(~53306u), _wgslsmith_clamp_u32(max(_wgslsmith_clamp_u32(52140u, 48229u, var_2.c.c.x), ~global1[_wgslsmith_index_u32(100502u, 32u)]), arg_0.c.x, global0.c.x)), false);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>) -> Struct_1 {
    global2 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, 1i, _wgslsmith_add_i32(-1i, global0.b) << (19042u % 32u), 9860i), abs(select(vec4<i32>(u_input.a, global2.x, global0.b, 0i), vec4<i32>(36772i, -2147483647i, u_input.a, -43671i), arg_1)), vec4<i32>(-1i) * -(~vec4<i32>(global2.x, 36650i, 62486i, global0.b))));
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d.yy * vec2<f32>(_wgslsmith_f_op_f32(154f + -1055f), _wgslsmith_f_op_f32(f32(-1f) * -274f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global0.d.x, 544f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-155f, global0.d.x, true)) + -359f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.yz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, 937f) + global0.d.zy)))));
    let var_1 = select(vec3<bool>(true, arg_1, any(!(!vec3<bool>(arg_1, true, global0.a)))), !vec3<bool>(false, !arg_1, _wgslsmith_f_op_f32(global0.d.x + global0.d.x) != _wgslsmith_f_op_f32(ceil(-364f))), !select(!select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, arg_1, global0.a), vec3<bool>(false, false, true)), select(vec3<bool>(false, arg_1, global0.a), select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, true, global0.a), vec3<bool>(false, true, true)), all(vec3<bool>(arg_1, arg_1, true))), global0.a));
    return Struct_1(!(func_3(Struct_1(arg_1, global0.b, vec4<u32>(10281u, 7474u, arg_2.x, 52628u), global0.d), _wgslsmith_f_op_f32(min(1295f, var_0.x)), ~vec4<i32>(-2147483647i, global0.b, global0.b, -18805i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, global0.d.x))) >= global0.c.x), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(7399i, u_input.a)), vec2<i32>(-2147483647i, global0.b)), vec2<i32>(_wgslsmith_mult_i32(global0.b, global0.b), 77367i)), ~(vec4<u32>(firstLeadingBit(arg_2.x), ~global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], _wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], arg_0.x)) << ((select(global0.c, vec4<u32>(4294967295u, global0.c.x, 43625u, 0u), global0.a) & ~global0.c) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(845f * global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), (global2.x | -2147483647i) <= -global2.x)), _wgslsmith_f_op_f32(global0.d.x * -796f), _wgslsmith_f_op_f32(f32(-1f) * -1209f)));
}

fn func_1() -> bool {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    var var_0 = Struct_2(-_wgslsmith_sub_vec4_i32(vec4<i32>(-17870i, global2.x, -1i, global0.b), vec4<i32>(-8934i, u_input.a, global0.b, 1i)) | (vec4<i32>(-1i) * -vec4<i32>(global2.x, global0.b, global2.x, 1i)), ~(-(~abs(vec3<i32>(1i, 2147483647i, global0.b)))), func_2(vec3<u32>(global0.c.x, abs(41284u) | (global1[_wgslsmith_index_u32(global0.c.x, 32u)] >> (global0.c.x % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(64993u, 4294967295u, global0.c.x, global0.c.x) ^ vec4<u32>(global0.c.x, global1[_wgslsmith_index_u32(global0.c.x, 32u)], 9599u, global0.c.x), vec4<u32>(global0.c.x, 29402u, 24608u, global0.c.x)), 32u)]), global0.a, abs(vec3<u32>(~global0.c.x, min(21577u, global1[_wgslsmith_index_u32(1u, 32u)]), global0.c.x))));
    global1 = array<u32, 32>();
    return func_2(global0.c.zwy, select(all(!vec4<bool>(var_0.c.a, true, true, false)), true, var_0.c.a), select(vec3<u32>(global0.c.x, _wgslsmith_dot_vec3_u32(global0.c.wzy, vec3<u32>(global1[_wgslsmith_index_u32(global0.c.x, 32u)], global0.c.x, 95227u)), firstTrailingBit(4294967295u)), var_0.c.c.xzz << (~global0.c.yzx % vec3<u32>(32u)), vec3<bool>(true || global0.a, false, any(vec2<bool>(var_0.c.a, var_0.c.a))))).a == (true && func_2(vec3<u32>(~1u, 0u, 24879u), any(select(vec4<bool>(var_0.c.a, false, global0.a, false), vec4<bool>(false, false, false, global0.a), true)), _wgslsmith_add_vec3_u32(global0.c.wxx, vec3<u32>(27757u, global0.c.x, var_0.c.c.x)) ^ global0.c.xww).a);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = -2147483647i & ~arg_3.c.b;
    var var_1 = Struct_2(_wgslsmith_mod_vec4_i32(select(_wgslsmith_mod_vec4_i32(arg_3.a << (arg_3.c.c % vec4<u32>(32u)), vec4<i32>(-38946i, arg_3.c.b, arg_2.b, global2.x)), _wgslsmith_mult_vec4_i32(-vec4<i32>(global2.x, u_input.a, -25462i, u_input.a), arg_3.a & arg_3.a), arg_3.c.a), _wgslsmith_add_vec4_i32(~countOneBits(arg_3.a), ~vec4<i32>(global0.b, global2.x, 0i, -36355i) << (select(arg_3.c.c, global0.c, vec4<bool>(false, global0.a, arg_0.a, arg_0.a)) % vec4<u32>(32u)))), ~abs(vec3<i32>(0i, arg_3.c.b | -67948i, global0.b | 49628i)), Struct_1(all(!vec3<bool>(arg_2.a, false, false)), ~arg_3.a.x, ~global0.c, vec3<f32>(arg_0.d.x, -152f, 304f)));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(411f, _wgslsmith_f_op_f32(floor(arg_0.d.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1091f, arg_1)) - _wgslsmith_f_op_f32(1000f + arg_3.c.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(233f, arg_2.d.x), _wgslsmith_f_op_f32(-304f + -637f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, 1000f))));
    var var_4 = all(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.c.a, arg_2.a, global0.a), vec3<bool>(!global0.a, !var_2.a, true))) || true;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(any(vec3<bool>(true, global0.a, func_1())), -2147483647i, ~(~reverseBits(vec4<u32>(0u, 0u, 1u, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.d - global0.d) * global0.d) - func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(global0.c.x, 32u)], global0.c.x), global0.c.yww), true, vec3<u32>(global1[_wgslsmith_index_u32(1399u, 32u)], global0.c.x, 9661u) | global0.c.xyz).d)), -865f, Struct_1(-34927i != global2.x, 1i, global0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d.x))), _wgslsmith_f_op_f32(-global0.d.x), 686f)), Struct_2(vec4<i32>(-2147483647i, firstTrailingBit(-11763i & global0.b), -2147483647i, 1i), min(~_wgslsmith_div_vec3_i32(global2.xyw, vec3<i32>(global0.b, -24175i, -6401i)), ~(vec3<i32>(global0.b, global0.b, u_input.a) & vec3<i32>(-16279i, 17687i, global2.x))), func_2(vec3<u32>(global0.c.x << (global1[_wgslsmith_index_u32(0u, 32u)] % 32u), global0.c.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 32u)], global0.c.x), global0.c.wx) == global0.c.x, firstTrailingBit(firstTrailingBit(global0.c.xyz)))));
    var var_0 = select(!vec3<bool>(true & any(vec4<bool>(global0.a, false, global0.a, global0.a)), global0.a, true), !vec3<bool>(global0.a, false, select(any(vec2<bool>(false, false)), !global0.a, !global0.a)), all(!select(!vec2<bool>(true, global0.a), select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a), vec2<bool>(true, global0.a)), all(vec4<bool>(false, true, true, false)))));
    let var_1 = ~(~_wgslsmith_div_u32(~(~29331u), ~1u));
    var var_2 = vec3<i32>(-1i) * -(~(~vec3<i32>(u_input.a, 18049i, 1736i)));
    var var_3 = -404f;
    var var_4 = global0.d.x;
    let var_5 = vec4<i32>(11827i, global0.b, global0.b, ~60988i);
    var var_6 = Struct_2(var_5, vec3<i32>(global0.b, -1i, -80630i), Struct_1(!var_0.x == func_4(func_4(Struct_1(global0.a, global0.b, global0.c, vec3<f32>(-692f, -699f, 1141f)), 1118f, Struct_1(var_0.x, 18202i, global0.c, global0.d), Struct_2(vec4<i32>(-20013i, -2147483647i, -20561i, var_2.x), vec3<i32>(-46781i, -1i, -32734i), Struct_1(global0.a, -5902i, vec4<u32>(var_1, 55455u, 0u, 4294967295u), vec3<f32>(-674f, 498f, -1000f)))), global0.d.x, func_4(Struct_1(true, -1i, vec4<u32>(44219u, global0.c.x, var_1, global0.c.x), global0.d), 566f, Struct_1(global0.a, 1951i, global0.c, vec3<f32>(global0.d.x, global0.d.x, -377f)), Struct_2(vec4<i32>(var_2.x, 0i, var_5.x, -27856i), global2.ywy, Struct_1(var_0.x, -30130i, vec4<u32>(12934u, 1u, 0u, global0.c.x), vec3<f32>(-1541f, 1228f, global0.d.x)))), Struct_2(vec4<i32>(global2.x, u_input.a, var_2.x, -2147483647i), vec3<i32>(global2.x, var_2.x, 26336i), Struct_1(false, global0.b, vec4<u32>(68595u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9937u, 32u)], 32u)], 1u, var_1), global0.d))).a, var_2.x, vec4<u32>((var_1 >> (1u % 32u)) & global1[_wgslsmith_index_u32(~4294967295u, 32u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.c.x, global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global0.c.x, 32u)]), 32u)]), 32u)], 34091u, ~(~global1[_wgslsmith_index_u32(global0.c.x, 32u)])), _wgslsmith_f_op_vec3_f32(global0.d + global0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_6.c.c.zz, vec2<u32>(1u, global0.c.x)), min(global0.c.zw, vec2<u32>(var_6.c.c.x, var_1))), global0.c.x, 67057u));
}

