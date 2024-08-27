struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 34263u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(104620u, 0u), vec2<u32>(45634u, 35902u), vec2<u32>(0u, 11961u), vec2<u32>(5193u, 0u), vec2<u32>(54182u, 1u), vec2<u32>(45945u, 31010u), vec2<u32>(75570u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 68852u), vec2<u32>(3952u, 26237u), vec2<u32>(2534u, 46984u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(143266u, 202u), vec2<u32>(0u, 20756u), vec2<u32>(14415u, 73649u), vec2<u32>(43318u, 18640u), vec2<u32>(29611u, 4294967295u));

var<private> global1: Struct_2;

var<private> global2: bool = false;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = !vec3<bool>(global1.a.a.x, global1.a.a.x, true);
    global0 = array<vec2<u32>, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(295f, 1691f, 287f), vec3<f32>(-418f, -1061f, 991f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 166f, -206f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-609f, 965f, -750f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1374f, -1000f, -1429f)) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(821f, -397f, -138f), vec3<f32>(-134f, -2227f, 442f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(636f, 1000f, 1066f), vec3<f32>(722f, -1097f, -980f)))), global1.d.a)))));
    global4 = _wgslsmith_mult_vec4_i32(select(-vec4<i32>(max(u_input.a, global4.x), 2152i, -u_input.b, -63749i), vec4<i32>(-2147483647i, u_input.a, ~(-2147483647i), -1i << (1u % 32u)) ^ _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-54948i, global4.x, u_input.b, 30905i)), vec4<i32>(u_input.a, -2147483647i, -1i, 0i) >> (vec4<u32>(1u, 75541u, arg_0, arg_0) % vec4<u32>(32u))), false), ~vec4<i32>(min(abs(0i), min(51184i, 1i)), 1i, 1i, ~_wgslsmith_mod_i32(0i, u_input.a)));
    global4 = vec4<i32>(44822i, -u_input.b, max(abs(28328i), countOneBits(_wgslsmith_clamp_i32(69858i, 22436i, global4.x))) | reverseBits(~global4.x), ~global4.x);
    return global4.x;
}

fn func_2() -> Struct_4 {
    let var_0 = vec4<i32>(global4.x ^ (-u_input.b & reverseBits(u_input.a)), ~func_3(firstLeadingBit(0u)), _wgslsmith_add_i32(-83496i, firstLeadingBit(-32341i) & u_input.a), abs(29819i));
    var var_1 = vec2<i32>(global4.x, min(min(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global1.b, global1.b, 4294967295u), vec4<u32>(4294967295u, global1.c.x, global1.b, global1.c.x))), ~(-29100i)), abs(var_0.x)));
    var var_2 = Struct_3(Struct_2(Struct_1(!global1.d.a), _wgslsmith_add_u32(global1.b, countOneBits(global1.c.x | 0u)), global1.c, Struct_1(select(vec3<bool>(true, global1.d.a.x, true), vec3<bool>(global1.d.a.x, true, global1.d.a.x), false))), Struct_2(Struct_1(vec3<bool>(global1.a.a.x, true, all(vec3<bool>(false, true, global1.d.a.x)))), countOneBits(firstLeadingBit(_wgslsmith_add_u32(global1.c.x, global1.b))), vec3<u32>(abs(global1.c.x), firstTrailingBit(global1.b), 0u) | max(global1.c, vec3<u32>(54719u, global1.c.x, global1.b)), Struct_1(global1.d.a)), Struct_2(global1.a, 3473u, _wgslsmith_div_vec3_u32(~(~vec3<u32>(global1.c.x, global1.c.x, global1.b)), countOneBits(reverseBits(vec3<u32>(global1.c.x, global1.c.x, 16284u)))), Struct_1(vec3<bool>(all(global1.d.a), false, any(vec2<bool>(false, global1.d.a.x))))));
    global4 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(var_0, var_0)), abs(global4.x) << (_wgslsmith_mod_u32(48914u, 38401u) % 32u)), global4.x, firstTrailingBit(_wgslsmith_mod_i32(var_0.x, 13861i) << (var_2.b.c.x % 32u)), u_input.a), var_0);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(747f, 1f)), -1000f));
    return Struct_4(var_2.a.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_1 {
    global3 = _wgslsmith_add_i32(global4.x, i32(-1i) * -firstLeadingBit(1i));
    global1 = Struct_2(func_2().a, global1.c.x, global1.c, Struct_1(!select(!global1.a.a, select(arg_0.a, vec3<bool>(global1.a.a.x, false, true), vec3<bool>(false, true, true)), any(vec4<bool>(arg_0.a.x, false, arg_0.a.x, false)))));
    global2 = global1.c.x <= 136618u;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1101f, 1000f) + -1498f)), vec2<f32>(_wgslsmith_f_op_f32(-612f - _wgslsmith_f_op_f32(ceil(-316f))), -344f))));
    var var_1 = select(vec2<i32>(u_input.b, -1i), -global4.zy, !(!select(global1.a.a.xz, vec2<bool>(arg_1.a.a.x, global1.d.a.x), global1.a.a.yy))) << (vec2<u32>(70093u, _wgslsmith_mod_u32(global1.c.x, ~_wgslsmith_add_u32(global1.b, global1.c.x))) % vec2<u32>(32u));
    return Struct_1(arg_0.a);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global1 = arg_0.a;
    var var_0 = Struct_5(Struct_4(func_2().a));
    let var_1 = ~reverseBits(u_input.b);
    global0 = array<vec2<u32>, 21>();
    global2 = var_0.a.a.a.x;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> Struct_5 {
    let var_0 = func_5(Struct_3(Struct_2(global1.a, _wgslsmith_dot_vec3_u32(~global1.c, vec3<u32>(0u, global1.c.x, 31888u) >> (global1.c % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(37046u, arg_1.x, global1.b) ^ global1.c), Struct_1(select(global1.a.a, global1.a.a, vec3<bool>(global1.a.a.x, true, true)))), Struct_2(Struct_1(!vec3<bool>(true, true, global1.d.a.x)), 36014u, global1.c, func_4(global1.a, func_2(), -global4.zy)), Struct_2(Struct_1(global1.d.a), _wgslsmith_dot_vec3_u32(~global1.c, vec3<u32>(global1.b, arg_1.x, global1.c.x)), global1.c, Struct_1(func_2().a.a))));
    var var_1 = func_5(var_0).c;
    let var_2 = Struct_3(func_5(Struct_3(var_0.b, Struct_2(func_2().a, arg_2, ~vec3<u32>(2732u, global1.b, arg_2), func_5(var_0).c.d), var_0.b)).a, func_5(Struct_3(var_0.b, var_0.b, func_5(var_0).a)).c, Struct_2(var_0.b.a, 0u, select(select(vec3<u32>(arg_2, 35898u, 0u) << (vec3<u32>(global1.b, 0u, 66216u) % vec3<u32>(32u)), ~global1.c, false || global1.d.a.x), vec3<u32>(arg_2, _wgslsmith_sub_u32(55154u, var_0.b.c.x), _wgslsmith_mod_u32(64143u, arg_1.x)), global1.d.a), global1.a));
    global0 = array<vec2<u32>, 21>();
    let var_3 = !var_2.a.a.a.x;
    return Struct_5(Struct_4(var_1.d));
}

fn func_6(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec4<i32>) -> bool {
    let var_0 = func_5(func_5(func_5(func_5(func_5(Struct_3(Struct_2(global1.a, 0u, global1.c, global1.a), Struct_2(arg_0.a.a, 4294967295u, vec3<u32>(global1.b, 17110u, global1.c.x), arg_0.a.a), Struct_2(arg_0.a.a, global1.b, global1.c, Struct_1(arg_0.a.a.a))))))));
    var var_1 = !global1.d.a.yy;
    global4 = arg_2;
    var var_2 = false;
    var var_3 = Struct_5(Struct_4(global1.d));
    return func_4(func_4(Struct_1(var_0.c.a.a), Struct_4(func_5(Struct_3(var_0.a, Struct_2(global1.d, 51536u, var_0.c.c, var_0.b.d), Struct_2(Struct_1(arg_1), 4294967295u, vec3<u32>(1u, 0u, 0u), var_0.a.a))).b.a), global4.xy), func_2(), vec2<i32>(-reverseBits(0i), global4.x)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1.a, ~global1.c.x, vec3<u32>(~firstLeadingBit(global1.c.x), select(min(42325u, global1.c.x ^ 19402u), (global1.c.x | global1.b) >> (abs(global1.b) % 32u), func_6(func_1(false, vec2<u32>(1u, global1.b), 1u), vec3<bool>(false, global1.a.a.x, global1.a.a.x), vec4<i32>(99741i, 32795i, global4.x, 2147483647i) & vec4<i32>(u_input.b, 2147483647i, 0i, u_input.a))), global1.b), Struct_1(!select(global1.a.a, global1.d.a, vec3<bool>(true, false, global1.a.a.x))));
    global4 = _wgslsmith_div_vec4_i32(reverseBits(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global4.x, global4.x, -1i, global4.x), vec4<i32>(global4.x, -13330i, global4.x, -3991i)), -vec4<i32>(u_input.a, 0i, 2147483647i, 1i), firstLeadingBit(vec4<i32>(2147483647i, global4.x, 11158i, -1i)))), select(vec4<i32>(global4.x, ~(1i & u_input.a), min(~(-33916i), ~global4.x), u_input.b), vec4<i32>(global4.x, u_input.a & u_input.b, ~global4.x, ~global4.x), true));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-263f))))), _wgslsmith_f_op_f32(step(565f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -132f)))), 985f);
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_mult_vec3_i32(global4.xwx, vec3<i32>(_wgslsmith_add_i32(20979i, global4.x), max(i32(-1i) * -global4.x, ~(u_input.b & u_input.b)), reverseBits(firstLeadingBit(global4.x)) << (global1.c.x % 32u)));
    global2 = global1.a.a.x;
    let var_4 = global1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x - -373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(441f * var_1.x)) + -1745f)));
}

