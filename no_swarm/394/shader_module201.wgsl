struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(50300i, -1i), vec2<u32>(25135u, 40367u), 2001i, vec2<u32>(4294967295u, 29574u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> f32 {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global1.a.x, u_input.b), -global1.c), arg_0.a)), abs(abs(~countOneBits(arg_0.b))), ~5584i, global1.d);
    global1 = Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(abs(u_input.c)), vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -1i), -27383i)) & _wgslsmith_clamp_vec2_i32(-arg_0.a, global1.a, -abs(arg_0.a)), _wgslsmith_mult_vec2_u32(arg_0.d, vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.d.x, global1.d.x), select(vec2<u32>(0u, 4294967295u), arg_0.b, vec2<bool>(arg_1, false))), arg_0.b.x)), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 8170i, -26442i), vec3<i32>(-34756i, 40441i, -1i))) << (global1.d.x % 32u), ~vec2<u32>(select(~20688u, _wgslsmith_add_u32(arg_0.d.x, 34661u), !arg_1), ~min(global1.d.x, arg_0.b.x)));
    global0 = max(min(max(global1.c, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.a.x, -10871i), global1.c)), global1.c), ~min(global1.a.x, 10910i));
    var var_0 = firstTrailingBit(23711u) >> (1u % 32u);
    var_0 = global1.d.x;
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(402f, _wgslsmith_f_op_f32(f32(-1f) * -779f), 1154f, -743f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, -356f, 427f, -986f)), vec4<f32>(369f, 2754f, 1000f, -742f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-4552i, 33381i), global1.b, 0i, global1.d), any(vec3<bool>(false, false, false)), _wgslsmith_div_f32(-1740f, 1375f))), 1057f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(232f - 715f) + _wgslsmith_f_op_f32(f32(-1f) * -562f)), 186f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-966f, 1644f, -411f, -294f)))), !all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -617f))) * _wgslsmith_f_op_vec2_f32(-var_0.xz))), _wgslsmith_f_op_vec2_f32(var_0.xz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1320f))) + vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.x)))));
    global1 = Struct_1(_wgslsmith_add_vec2_i32(~(global1.a << (vec2<u32>(0u, 51610u) % vec2<u32>(32u))), abs(u_input.c)) | ~vec2<i32>(arg_1, u_input.a), global1.b, min(58009i, global1.a.x), ~_wgslsmith_add_vec2_u32(firstTrailingBit(global1.b), vec2<u32>(~4294967295u, 25961u >> (arg_0 % 32u))));
    let var_2 = _wgslsmith_div_f32(296f, var_1.x);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.x)), var_2);
    return select(vec2<u32>(_wgslsmith_add_u32(global1.d.x << (select(40949u, 18950u, true) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(51040u, 1u), global1.d, global1.d), reverseBits(vec2<u32>(arg_0, 4294967295u)))), ~(~(~global1.b.x))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0 << ((1u | global1.d.x) % 32u)), global1.d), !(false | all(vec2<bool>(true, true))));
}

fn func_1() -> i32 {
    var var_0 = !vec2<bool>(true && !(0u <= global1.b.x), true);
    var var_1 = Struct_1(~(vec2<i32>(countOneBits(-1i), countOneBits(global1.c)) ^ vec2<i32>(u_input.b, -2147483647i)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(func_2(4294967295u, 4521i)), vec2<u32>(global1.d.x, ~global1.b.x)), global1.b), 0i, ~global1.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(237f * -879f), _wgslsmith_f_op_f32(select(-480f, -1136f, false)), _wgslsmith_f_op_f32(min(-143f, -1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1365f, -401f, _wgslsmith_f_op_f32(min(-1025f, 241f)))), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, var_0.x), true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)))));
    var var_3 = _wgslsmith_div_f32(-609f, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -102f))));
    let var_4 = vec3<u32>(global1.b.x & ~65506u, select(~_wgslsmith_div_u32(~global1.b.x, 0u), ~(~(~var_1.d.x)), var_2.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x)))), 88886u);
    return _wgslsmith_clamp_i32(var_1.c, _wgslsmith_add_i32(_wgslsmith_sub_i32(min(29887i, global1.c), ~global1.a.x), 0i), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-17518i, -1i), vec2<i32>(u_input.b, global1.a.x)), -1i, global1.c), vec3<i32>(_wgslsmith_sub_i32(65269i, 51175i), firstLeadingBit(-1i), ~12326i) << (select(var_4, ~vec3<u32>(1u, 0u, 39052u), vec3<bool>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 11000i;
    global0 = func_1();
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32((~u_input.c >> (vec2<u32>(1u, 65377u) % vec2<u32>(32u))) ^ global1.a, u_input.c), vec2<u32>(~65395u, global1.b.x), select(i32(-1i) * -1i, global1.c, all(vec4<bool>(-9902i != global1.c, true, true, global1.d.x != 4294967295u))), vec2<u32>(50754u, ~global1.b.x));
    let var_1 = global1.c;
    let var_2 = var_0.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, -186f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1619f, -658f), vec2<f32>(-167f, 676f))), vec2<f32>(-182f, 452f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-265f, -551f))))));
    global1 = Struct_1(var_0.a, ~vec2<u32>(var_0.b.x, 1u), var_0.a.x, vec2<u32>(~(global1.b.x >> (var_2.x % 32u)), countOneBits(var_2.x)));
    global0 = _wgslsmith_mult_i32(var_0.c, ~(~global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -270f, -681f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1198f, var_3.x, 548f, 605f) + vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, 1581f, 406f, 198f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, var_3.x, -101f, var_3.x), vec4<f32>(-1971f, var_3.x, -1859f, -647f))))))), -638f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 + var_3)))), vec2<f32>(var_3.x, -2775f));
}

