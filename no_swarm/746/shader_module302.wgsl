struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-26492i, 0i, 3789i);

var<private> global1: u32 = 1u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec4<bool> {
    global1 = 57793u;
    global1 = ~(~1u);
    global1 = firstLeadingBit(~max(~(~24817u), (u_input.a ^ u_input.a) | firstLeadingBit(u_input.a)));
    global0 = array<i32, 3>();
    global1 = min(_wgslsmith_mult_u32(~u_input.a, ~1u), u_input.a << (abs(0u) % 32u));
    return !vec4<bool>((true | (8542i <= global0[_wgslsmith_index_u32(u_input.a, 3u)])) || (true | select(true, false, true)), true, true, any(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, -2460f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1372f, 209f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(223f, 347f))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-394f, -841f) - vec2<f32>(1062f, -1745f))))))))));
    let var_1 = Struct_2(Struct_1(!vec3<bool>(true, arg_0.x, !arg_0.x), arg_1.b), Struct_1(arg_1.a, 58399u ^ ~arg_1.b), Struct_1(vec3<bool>(true, true, true), arg_2.x));
    let var_2 = Struct_3(Struct_1(var_1.c.a, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(47064u, 0u), arg_2.zy), arg_2.wx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(195f, var_0.x), vec2<f32>(-948f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -481f) - vec2<f32>(474f, var_0.x))))), var_1.a, var_1, _wgslsmith_clamp_i32(i32(-1i) * -55075i, -(firstLeadingBit(-2147483647i) ^ global0[_wgslsmith_index_u32(~24793u, 3u)]), min(global0[_wgslsmith_index_u32(~var_1.a.b, 3u)], global0[_wgslsmith_index_u32(reverseBits(var_1.a.b), 3u)])));
    var_0 = var_2.b;
    let var_3 = select(!(!(!(!vec3<bool>(var_2.c.a.x, false, true)))), !vec3<bool>(true, false, all(!vec3<bool>(false, false, var_2.d.b.a.x))), any(vec3<bool>(true, arg_1.a.x, func_2().x)) & arg_1.a.x);
    return arg_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_5) -> Struct_2 {
    global1 = ~arg_0.b;
    global0 = array<i32, 3>();
    var var_0 = arg_0;
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    return Struct_2(arg_0, Struct_1(var_0.a, 9422u), arg_0);
}

fn func_1() -> f32 {
    let var_0 = func_4(Struct_1(select(func_3(func_2(), Struct_1(vec3<bool>(false, false, true), u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))), vec3<bool>(func_2().x, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), u_input.a), ~(~vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(17946u, 3u)]), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a, 3u)], -2147483647i))), Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(282f, -1355f) + _wgslsmith_f_op_f32(705f * 277f)))), -808f));
    let var_1 = var_0.b.a.x;
    global1 = 1u;
    var var_2 = Struct_3(var_0.a, vec2<f32>(-555f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), -1000f)), func_4(Struct_1(vec3<bool>(select(true, true, false), func_4(var_0.a, vec2<i32>(-2147483647i, -1i), Struct_5(-1267f, 434f)).a.a.x, true), 19022u), (vec2<i32>(global0[_wgslsmith_index_u32(var_0.c.b, 3u)], 1i) & (vec2<i32>(1i, 3213i) >> (vec2<u32>(62501u, var_0.a.b) % vec2<u32>(32u)))) ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], -42780i), Struct_5(_wgslsmith_f_op_f32(-1947f - -1354f), _wgslsmith_f_op_f32(f32(-1f) * -3144f))).a, var_0, 0i);
    global1 = ~_wgslsmith_clamp_u32(0u, 3639u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(var_2.c.b, var_0.b.b, 4294967295u), 133474u));
    return 1619f;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_5 {
    var var_0 = Struct_4(Struct_1(vec3<bool>(!(!arg_1), false, true), firstLeadingBit(1606u) & (~u_input.a | 26542u)));
    var var_1 = true;
    var var_2 = -43634i;
    global1 = firstTrailingBit(~var_0.a.b);
    global0 = array<i32, 3>();
    return Struct_5(arg_0, _wgslsmith_div_f32(arg_0, arg_0));
}

fn func_6(arg_0: Struct_5) -> Struct_3 {
    global0 = array<i32, 3>();
    let var_0 = func_4(func_4(func_4(Struct_1(vec3<bool>(true, true, false), 4294967295u), -vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 3u)]), Struct_5(713f, _wgslsmith_f_op_f32(abs(arg_0.a)))).b, -_wgslsmith_div_vec2_i32(select(vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 3u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]), true), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], -1i)), Struct_5(_wgslsmith_f_op_f32(func_5(arg_0.b, true, -32954i).a * _wgslsmith_f_op_f32(292f * arg_0.a)), -396f)).a, ~firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(-27227i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], -6532i))), arg_0);
    let var_1 = u_input.a;
    let var_2 = -vec4<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(35316u, 3u)]), 28836i, -global0[_wgslsmith_index_u32(var_1, 3u)], abs(global0[_wgslsmith_index_u32(var_0.a.b, 3u)]));
    let var_3 = arg_0.b;
    return Struct_3(Struct_1(vec3<bool>(var_0.c.a.x, var_0.a.a.x, any(var_0.b.a.yz)), 1u >> (var_1 % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(2037f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - -475f))), Struct_1(func_4(Struct_1(var_0.c.a, 12663u), vec2<i32>(-var_2.x, abs(15523i)), func_5(_wgslsmith_f_op_f32(round(var_3)), true, firstTrailingBit(-22818i))).c.a, abs(firstTrailingBit(~4294967295u))), Struct_2(func_4(func_4(func_4(var_0.b, var_2.wy, arg_0).c, ~var_2.yz, arg_0).a, vec2<i32>(firstTrailingBit(var_2.x), -var_2.x), Struct_5(-471f, _wgslsmith_f_op_f32(-1379f - var_3))).b, Struct_1(var_0.a.a, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(39035u, var_0.c.b, u_input.a), vec3<u32>(78785u, var_0.a.b, var_0.c.b)))), Struct_1(func_4(func_4(Struct_1(vec3<bool>(false, true, var_0.c.a.x), 19165u), vec2<i32>(global0[_wgslsmith_index_u32(var_0.a.b, 3u)], 2147483647i), Struct_5(var_3, 799f)).c, firstLeadingBit(var_2.zw), Struct_5(arg_0.a, arg_0.a)).b.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_1, var_1), vec4<u32>(4294967295u, 4294967295u, 0u, var_1)), 43622u))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(-1003f, _wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(f32(-1f) * -1015f), global0[_wgslsmith_index_u32(select(63295u, 45951u, (global0[_wgslsmith_index_u32(u_input.a, 3u)] > global0[_wgslsmith_index_u32(17547u, 3u)]) | true), 3u)]));
    var_0 = Struct_3(var_0.c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(var_0.b)))), Struct_1(vec3<bool>(func_3(vec4<bool>(true, true, true, true), func_4(var_0.d.a, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], var_0.e), Struct_5(-1377f, -2088f)).c, vec4<u32>(4294967295u, var_0.d.c.b, 1u, 4294967295u)).x, true, 1000f > _wgslsmith_div_f32(-1727f, var_0.b.x)), u_input.a), var_0.d, global0[_wgslsmith_index_u32(~reverseBits(var_0.d.a.b) ^ 39705u, 3u)]);
    let var_1 = firstTrailingBit(1i);
    var_0 = func_6(func_5(_wgslsmith_f_op_f32(var_0.b.x - 670f), !func_3(vec4<bool>(var_0.c.a.x, var_0.a.a.x, var_0.a.a.x, var_0.c.a.x), func_4(var_0.a, vec2<i32>(-17092i, -51801i), Struct_5(var_0.b.x, 1466f)).c, firstLeadingBit(vec4<u32>(4294967295u, 47192u, 4294967295u, u_input.a))).x, ~(-1i)));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_1 >> (var_0.c.b % 32u), -2147483647i) << (~1u % 32u), _wgslsmith_sub_i32(-31079i, _wgslsmith_div_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 3u)]) & ~var_1)), vec2<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_add_i32(19790i, -20385i)), var_1));
    var var_3 = select(min(vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.b, 1u, var_0.a.b), vec4<u32>(u_input.a, var_0.c.b, 32071u, u_input.a)) & ~var_0.a.b), ~max(vec3<u32>(1u, u_input.a, var_0.d.b.b), vec3<u32>(4294967295u, var_0.d.b.b, 11524u))), vec3<u32>(u_input.a, ~4294967295u, 6274u), true);
    var_0 = Struct_3(var_0.c, var_0.b, Struct_1(!(!vec3<bool>(true, var_0.a.a.x, true)), ~4294967295u), Struct_2(Struct_1(var_0.d.b.a, abs(u_input.a)), Struct_1(var_0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_0.c.b, u_input.a), vec3<u32>(13233u, var_0.a.b, 10737u))), func_6(Struct_5(304f, var_0.b.x)).c), -5144i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, 520f, 522f, var_0.b.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, 546f, -404f, -2046f), vec4<f32>(-455f, -1000f, var_0.b.x, 692f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 1209f, 392f), vec4<f32>(-942f, var_0.b.x, 287f, var_0.b.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.x, -124f, var_0.b.x, var_0.b.x))))), ~min(_wgslsmith_mult_vec2_u32(abs(var_3.yy), select(vec2<u32>(86101u, var_3.x), vec2<u32>(1u, 4294967295u), var_0.c.a.x)), var_3.zz), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x))), var_0.b.x)), vec2<i32>(var_1, ~1i) << (vec2<u32>(~firstLeadingBit(1452u), _wgslsmith_mod_u32(var_0.d.c.b | var_0.d.b.b, 4294967295u)) % vec2<u32>(32u)));
}

