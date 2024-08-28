struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, i32(-2147483648), vec3<f32>(-364f, -229f, 708f)), Struct_1(true, 1i, vec3<f32>(-703f, -926f, 438f)), Struct_1(false, -3130i, vec3<f32>(1887f, 849f, 846f)), Struct_1(true, 1i, vec3<f32>(1172f, -1044f, 676f)), Struct_1(true, -6873i, vec3<f32>(110f, 1483f, 1604f)), Struct_1(false, 15407i, vec3<f32>(1003f, 353f, 2669f)), Struct_1(false, -9500i, vec3<f32>(-1866f, 1000f, -1046f)), Struct_1(true, 0i, vec3<f32>(629f, -1410f, 1157f)), Struct_1(false, 90800i, vec3<f32>(900f, -1803f, -1471f)), Struct_1(false, -8253i, vec3<f32>(-590f, -1564f, 1420f)), Struct_1(true, 0i, vec3<f32>(182f, -1385f, 274f)), Struct_1(true, -6668i, vec3<f32>(-2089f, -1000f, -258f)), Struct_1(false, 2147483647i, vec3<f32>(-290f, 832f, -1423f)), Struct_1(false, 1i, vec3<f32>(-911f, -660f, 1182f)), Struct_1(true, 21960i, vec3<f32>(523f, -1353f, -991f)), Struct_1(true, i32(-2147483648), vec3<f32>(485f, -1477f, 1275f)), Struct_1(false, i32(-2147483648), vec3<f32>(828f, -573f, 746f)), Struct_1(false, i32(-2147483648), vec3<f32>(-262f, 1000f, -178f)), Struct_1(true, 6410i, vec3<f32>(665f, -879f, -722f)), Struct_1(false, 29309i, vec3<f32>(1657f, 308f, -654f)), Struct_1(true, 24159i, vec3<f32>(656f, -1007f, -381f)));

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(false, 22943i, vec3<f32>(-1018f, -101f, -1062f));

var<private> global3: Struct_2 = Struct_2(Struct_1(false, i32(-2147483648), vec3<f32>(-848f, 1212f, 116f)), vec3<f32>(-1418f, -1000f, -892f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<f32> {
    global0 = array<Struct_1, 21>();
    global3 = Struct_2(global0[_wgslsmith_index_u32(firstTrailingBit(~(~abs(u_input.c.x))), 21u)], _wgslsmith_div_vec3_f32(vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(937f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - -141f))), _wgslsmith_f_op_vec3_f32(abs(global2.c))));
    global2 = Struct_1(!(4294967295u < u_input.c.x), ~max(select(_wgslsmith_add_i32(u_input.b, global2.b), 34624i >> (u_input.c.x % 32u), true), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)) * global3.b.x), _wgslsmith_f_op_f32(floor(-796f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.c.x)))));
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(29831u, 21u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), 686f, 602f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + global3.a.c))));
    global0 = array<Struct_1, 21>();
    return global2.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> vec3<i32> {
    global3 = arg_0;
    global1 = 272f != global3.b.x;
    var var_0 = vec2<bool>(-2021f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1050f, arg_0.b.x)), !all(select(!vec4<bool>(arg_0.a.a, false, arg_0.a.a, global2.a), !vec4<bool>(false, global3.a.a, false, true), select(true, false, global3.a.a))));
    var var_1 = vec4<u32>(arg_2.x, _wgslsmith_sub_u32(~arg_2.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, 1u), ~vec3<u32>(arg_2.x, arg_2.x, u_input.a)), min(0u, _wgslsmith_add_u32(arg_2.x, 4294967295u)))), ~77475u, ~(~u_input.c.x | arg_2.x));
    var var_2 = Struct_2(Struct_1(false, _wgslsmith_add_i32(12371i, 52522i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * -2042f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-903f + arg_0.a.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-377f, global2.c.x, -1441f))) * _wgslsmith_f_op_vec3_f32(global2.c - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.c.x, global3.a.c.x, 620f)))))));
    return vec3<i32>(1i & var_2.a.b, i32(-1i) * -1i, -31487i);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    global2 = global3.a;
    global3 = Struct_2(global3.a, vec3<f32>(_wgslsmith_f_op_f32(abs(global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, 697f)), _wgslsmith_f_op_f32(-867f * global2.c.x)));
    global2 = Struct_1(any(select(vec4<bool>(any(vec3<bool>(false, true, global3.a.a)), !global2.a, !global3.a.a, all(vec2<bool>(true, global2.a))), select(select(vec4<bool>(arg_0, arg_0, global3.a.a, true), vec4<bool>(global3.a.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, false, true, arg_0)), !vec4<bool>(global2.a, global3.a.a, arg_0, false), vec4<bool>(global2.a, false, global3.a.a, true)), vec4<bool>(false, false && arg_0, global3.a.a, !arg_0))), 9599i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1726f, 1842f, arg_1.x) + arg_1));
    let var_0 = func_4(Struct_2(Struct_1(true, ~select(2147483647i, global3.a.b, false), _wgslsmith_f_op_vec3_f32(func_3())), vec3<f32>(_wgslsmith_f_op_f32(sign(511f)), global3.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -467f))), _wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(global3.a.b, 3734i) ^ vec2<i32>(1i, -1i)), vec2<i32>(_wgslsmith_mult_i32(u_input.b, 1i), 1i)), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(global3.a.c.x * _wgslsmith_f_op_f32(arg_1.x - 1215f))) + _wgslsmith_f_op_f32(921f - global2.c.x));
    return var_0.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<u32> {
    global2 = global0[_wgslsmith_index_u32(arg_1.a, 21u)];
    let var_0 = true;
    let var_1 = ~func_2(all(vec4<bool>(true, any(vec3<bool>(arg_1.b.a.a, false, var_0)), false, arg_1.b.a.a)), _wgslsmith_f_op_vec3_f32(ceil(global3.b)));
    let var_2 = select(_wgslsmith_sub_vec3_i32(min(_wgslsmith_div_vec3_i32(select(vec3<i32>(17837i, var_1, global3.a.b), vec3<i32>(var_1, -1374i, 2147483647i), global2.a), vec3<i32>(arg_1.b.a.b, global3.a.b, arg_0.x)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, global3.a.b, global3.a.b)), vec3<i32>(65053i, arg_1.c.x, 2147483647i) | vec3<i32>(2147483647i, var_1, -18091i))), _wgslsmith_add_vec3_i32(min(firstLeadingBit(vec3<i32>(global3.a.b, arg_1.c.x, 2147483647i)), -vec3<i32>(-1i, global3.a.b, -1i)), reverseBits(vec3<i32>(global2.b, global3.a.b, -20088i)) << (firstLeadingBit(u_input.c.xyz) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), abs(-vec3<i32>(39401i, 0i, var_1) ^ ~vec3<i32>(global3.a.b, arg_1.c.x, 16697i))), all(!(!vec2<bool>(var_0, global3.a.a))));
    var var_3 = vec2<bool>(true, _wgslsmith_dot_vec2_i32(arg_0 ^ ~vec2<i32>(var_1, -2147483647i), vec2<i32>(var_2.x ^ 0i, var_1)) > -34108i);
    return vec4<u32>(~arg_1.a, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(u_input.c), vec4<u32>(564u, 83827u, 75585u, 4294967295u) ^ u_input.c), ~(~vec4<u32>(22006u, 75579u, 1u, 0u))), 21166u, ~arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), _wgslsmith_sub_vec4_u32(func_1(vec2<i32>(global3.a.b, u_input.b), Struct_3(u_input.a, Struct_2(Struct_1(global2.a, -44216i, global2.c), vec3<f32>(global2.c.x, global3.a.c.x, global3.a.c.x)), vec2<i32>(-6841i, 33941i))), u_input.c & vec4<u32>(u_input.c.x, 29963u, 12190u, u_input.a))) ^ ~1u, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(94884u, 16845u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a, u_input.a, 14056u, 1u))), min(vec4<u32>(38176u, u_input.a, u_input.a, u_input.c.x), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(18582u, 4294967295u, 6548u, u_input.a))))));
    let var_1 = Struct_2(Struct_1(global2.a, select(1i, 1i, true) | ~(~1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(297f, -1154f)), -301f, _wgslsmith_f_op_f32(f32(-1f) * -259f)))), global3.a.c);
    global2 = Struct_1(all(vec4<bool>(global2.a, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_1.a.a, false, global3.a.a), vec4<bool>(false, false, global2.a, false))), false)), _wgslsmith_mult_i32(global2.b, _wgslsmith_mult_i32(1i, global3.a.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global3.a.c, global2.c)) * _wgslsmith_div_vec3_f32(vec3<f32>(global3.b.x, -711f, -369f), global2.c)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(global3.a.c, vec3<f32>(1104f, var_1.b.x, -563f))))))));
    var var_2 = vec3<u32>(1u, ~(~(~u_input.c.x | func_1(vec2<i32>(63236i, global3.a.b), Struct_3(var_0, var_1, vec2<i32>(u_input.b, u_input.b))).x)), 1u);
    global0 = array<Struct_1, 21>();
    let var_3 = select(select(select(vec3<bool>(true, var_1.a.a, var_1.a.a), select(vec3<bool>(var_1.a.a, global3.a.a, false), select(vec3<bool>(global3.a.a, true, global2.a), vec3<bool>(true, global2.a, global3.a.a), false), true), -var_1.a.b >= select(global3.a.b, global2.b, false)), !select(!vec3<bool>(true, false, var_1.a.a), select(vec3<bool>(true, global2.a, var_1.a.a), vec3<bool>(false, false, var_1.a.a), false), all(vec2<bool>(false, true))), !vec3<bool>(select(global3.a.a, var_1.a.a, false), !global2.a, any(vec2<bool>(global3.a.a, true)))), !vec3<bool>(false, !any(vec4<bool>(global2.a, true, global2.a, global2.a)), true), !all(vec4<bool>(global2.a, any(vec2<bool>(false, global3.a.a)), true, var_1.a.b < 2147483647i)));
    var var_4 = _wgslsmith_add_vec3_u32(~vec3<u32>(22920u, var_2.x << (28999u % 32u), var_2.x) << (_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(17000u, var_0, u_input.c.x)), (u_input.c.yyx ^ vec3<u32>(var_2.x, 77627u, u_input.c.x)) & (vec3<u32>(2386u, 0u, u_input.c.x) & u_input.c.xwz)) % vec3<u32>(32u)), vec3<u32>(~4294967295u, 1u, ~reverseBits(firstTrailingBit(u_input.a))));
    var var_5 = select(var_3, !(!var_3), any(vec4<bool>(global2.a || true, all(var_3) != !global3.a.a, all(vec2<bool>(var_3.x, false)), global3.a.a)));
    global3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer((-_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(global2.b, global3.a.b)) & max(~vec2<i32>(-1i, var_1.a.b), vec2<i32>(1i, global3.a.b))) | vec2<i32>(6893i, abs(func_4(var_1, -4086i, vec4<u32>(var_2.x, var_4.x, 1u, 4294967295u)).x)), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.b >> (u_input.a % 32u), abs(0i)), u_input.b, firstTrailingBit(global3.a.b)));
}

