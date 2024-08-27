struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(i32(-2147483648), 20815i, i32(-2147483648), 27424i, 25179i, -1i, -29137i, i32(-2147483648), -50740i, -37058i, -1i, -9209i, 2147483647i, 2147483647i, 12334i, -35555i, -20078i, 977i, 1i, 35405i, 0i, -35462i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(any(vec2<bool>(true, arg_1.x)) && !(4294967295u >= (53545u << (u_input.b.x % 32u))), -arg_2.c >> (u_input.b % vec2<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) << (79027u % 32u), u_input.b.x), u_input.b.x << (_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, ~u_input.b.x) % 32u)), vec3<u32>(abs(_wgslsmith_mult_u32(u_input.b.x >> (u_input.b.x % 32u), ~4294967295u)), u_input.b.x, 1u));
    var var_1 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(-arg_2.b), vec2<i32>(~3651i, countOneBits(~(var_0.b.x >> (u_input.b.x % 32u)))), !arg_2.d);
    global0 = array<i32, 22>();
    var var_2 = select(vec3<bool>(!(!(arg_0 < global0[_wgslsmith_index_u32(31559u, 22u)])), -1949f <= _wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(-1299f - -276f))), true), !arg_1, select(true, true, false));
    let var_3 = _wgslsmith_mod_u32(var_0.d.x, countOneBits(~_wgslsmith_sub_u32(17327u >> (var_0.d.x % 32u), ~15169u)));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(abs(~vec4<u32>(0u, var_3, 15122u, 57999u)), vec4<u32>(var_0.c & var_3, 0u, 43293u, var_3) >> (vec4<u32>(~1u, ~u_input.b.x, _wgslsmith_mod_u32(4304u, var_3), ~var_3) % vec4<u32>(32u))), ~(~vec4<u32>(80896u, var_0.d.x, _wgslsmith_div_u32(var_0.c, var_0.d.x), firstLeadingBit(4294967295u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = func_3(-2147483647i, vec3<bool>(true, true, arg_1), Struct_1(countOneBits(19278i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.zww, vec3<f32>(arg_0.x, arg_0.x, -657f))) - arg_0.xxw) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(ceil(arg_0.x)))), ~(~(vec2<i32>(1i, global0[_wgslsmith_index_u32(12685u, 22u)]) >> (u_input.b % vec2<u32>(32u)))), true));
    let var_1 = Struct_2(arg_1, vec2<i32>(1i, u_input.a), u_input.b.x, ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.x, arg_2.x) ^ vec3<u32>(u_input.b.x, arg_2.x, u_input.b.x), ~vec3<u32>(arg_2.x, 13642u, 1u))));
    var var_2 = var_1;
    var_2 = Struct_2(any(select(vec2<bool>(false, arg_0.x == arg_0.x), select(select(vec2<bool>(true, false), vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, var_2.a)), !vec2<bool>(false, var_1.a), select(vec2<bool>(var_1.a, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(var_2.a != true, u_input.b.x != 0u))), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.a, 44333i), var_1.b), 0u, _wgslsmith_add_vec3_u32(~(~(~var_1.d)), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, min(24064u, arg_2.x)), abs(31893u) >> (~var_0.x % 32u), var_1.d.x)));
    global0 = array<i32, 22>();
    return Struct_2(false, vec2<i32>(~11862i, -19414i), arg_2.x, _wgslsmith_mod_vec3_u32(vec3<u32>(131507u, var_2.d.x, arg_2.x), ~func_3(abs(21583i), select(vec3<bool>(arg_1, false, var_1.a), vec3<bool>(arg_1, true, var_2.a), false), Struct_1(-1i, arg_0.ywx, var_1.b, arg_1)).zxw));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = ~u_input.b.x;
    return reverseBits(vec2<i32>(arg_0.b.x, i32(-1i) * -39004i));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 808u, u_input.b.x), vec3<u32>(u_input.b.x, 15757u << (1u % 32u), 1u << (0u % 32u))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 33968u), vec3<u32>(39422u, arg_0, arg_0)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 0u, 0u), select(vec3<u32>(3905u, 4294967295u, 4294967295u), vec3<u32>(58804u, u_input.b.x, arg_0), vec3<bool>(true, true, arg_1.d))) % vec3<u32>(32u))));
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.a, (i32(-1i) * -2147483647i) >> (_wgslsmith_mult_u32(0u, arg_0) % 32u)), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(322f, arg_1.b.x, 133f), arg_1.b, arg_1.d)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.b.x, -768f) + arg_1.b)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 1000f, arg_1.b.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(sign(185f)), -246f) * _wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(-745f, arg_1.b.x, arg_1.b.x))))), -func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, arg_1.b.x, arg_1.b.x, arg_1.b.x)), true, vec4<u32>(1u, 50893u, 4294967295u, var_0.x)), Struct_2(true, ~arg_1.c, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~vec3<u32>(74377u, var_0.x, 32164u)), any(select(vec3<bool>(true, arg_1.d, arg_1.d), vec3<bool>(true, false, arg_1.d), true)), vec2<bool>(arg_1.a >= 1i, true)), all(!vec4<bool>(true, true, true, arg_1.d)) & all(vec4<bool>(arg_1.d && true, true, true, 34366u <= arg_0)));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<i32, 22>();
    var var_0 = arg_1.x;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-2273f, 1000f, false)), -1000f, arg_1.x, _wgslsmith_f_op_f32(ceil(arg_2.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, -150f, arg_2.b.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, arg_2.b.x, arg_1.x), vec4<f32>(arg_1.x, 339f, arg_2.b.x, -737f)))))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0, 0u), vec3<u32>(121728u, 5917u, 47983u))) >= u_input.b.x, ~(vec4<u32>(_wgslsmith_clamp_u32(u_input.b.x, 32626u, arg_0), abs(431u), 1u, u_input.b.x) ^ ~vec4<u32>(80110u, u_input.b.x, 29676u, arg_0)));
    var_0 = _wgslsmith_f_op_f32(arg_1.x - 1000f);
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2400f, _wgslsmith_f_op_f32(arg_1.x * arg_2.b.x)))))));
    return _wgslsmith_add_vec3_u32(var_1.d, var_1.d);
}

fn func_6(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    global0 = array<i32, 22>();
    let var_0 = _wgslsmith_f_op_f32(-607f * _wgslsmith_div_f32(-1335f, -491f));
    global0 = array<i32, 22>();
    var var_1 = vec4<i32>(_wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(abs(1u), 22u)]), func_1(countOneBits(11608u), func_1(u_input.b.x, func_1(0u, Struct_1(u_input.a, vec3<f32>(var_0, var_0, -839f), vec2<i32>(arg_1, -28007i), true), ~global0[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_mult_i32(-40636i, u_input.a)), ~(arg_1 | u_input.a) & -22492i).c.x, ~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(global0[_wgslsmith_index_u32(66629u, 22u)], -1i, -1i, u_input.a)), vec4<i32>(~global0[_wgslsmith_index_u32(1u, 22u)], u_input.a, -u_input.a, _wgslsmith_sub_i32(u_input.a, -1i))), global0[_wgslsmith_index_u32(firstLeadingBit(~arg_0.x), 22u)] ^ arg_1);
    var var_2 = var_1.yx;
    return Struct_2(any(vec4<bool>(true, true, true, true)), firstLeadingBit(-vec2<i32>(arg_1, -87754i)), ~(~select(33292u, firstLeadingBit(u_input.b.x), true)), abs(~_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(4294967295u, arg_0.x, arg_0.x))) >> (vec3<u32>(_wgslsmith_sub_u32(4294967295u, arg_0.x), ~arg_0.x, 9108u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~func_5(u_input.b.x | u_input.b.x, vec3<f32>(-260f, 2275f, 1136f), func_1(u_input.b.x, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], vec3<f32>(-1000f, -479f, 1704f), vec2<i32>(global0[_wgslsmith_index_u32(83486u, 22u)], u_input.a), true), global0[_wgslsmith_index_u32(u_input.b.x, 22u)])) | _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(13320u, 6712u, u_input.b.x), ~vec3<u32>(4294967295u, 12550u, 64087u)), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 27707u, 29683u), vec3<u32>(u_input.b.x, 54669u, 62938u), vec3<u32>(19655u, 0u, 81640u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), u_input.a);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1673f + 993f), _wgslsmith_f_op_f32(167f * 280f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) + _wgslsmith_f_op_f32(sign(388f)))))), -931f);
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, -2147483647i, 62873i, -7834i), -abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 39781i, -10438i, -1i), vec4<i32>(-2147483647i, -1i, u_input.a, -9012i))) & vec4<i32>(-1i, 2147483647i, _wgslsmith_div_i32(var_0.b.x, -98895i), max(min(var_0.b.x, var_0.b.x), _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(var_0.b.x, global0[_wgslsmith_index_u32(91523u, 22u)])))));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

