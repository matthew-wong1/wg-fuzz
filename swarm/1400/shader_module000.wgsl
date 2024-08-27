struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(72314u, 24927u, 13313u, 73466u);

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = vec3<i32>(56186i, _wgslsmith_mult_i32(1i, u_input.b), abs(~u_input.a.x)) << (~max(~abs(global0.ywz), select(~global0.yzy, ~global0.xzw, true)) % vec3<u32>(32u));
    let var_1 = ~global0.ywx;
    var var_2 = !vec4<bool>(false, true, false, arg_0);
    let var_3 = var_0.x;
    let var_4 = var_2.xzw;
    return -1629f;
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = reverseBits(~reverseBits(55626i));
    let var_1 = ~global0.x;
    global2 = array<vec2<bool>, 11>();
    let var_2 = Struct_1(~arg_0.a, select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, false, false))), any(vec4<bool>(false, true, true, false)) | true), vec3<bool>(true, true, _wgslsmith_add_u32(4294967295u, var_1) != _wgslsmith_sub_u32(27u, arg_0.a)), true), select(select(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(86608u, 11u)], vec2<bool>(true, false)), !select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, 25503u), 11u)], !global2[_wgslsmith_index_u32(global0.x, 11u)]), !any(global2[_wgslsmith_index_u32(21770u, 11u)])), _wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, global0.x), ~(16014u ^ var_1) | max(select(var_1, var_1, true), var_1 ^ global0.x)));
    var var_3 = !(!vec4<bool>(var_2.c.x, false, false, false));
    return -22133i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_div_u32(global0.x, ~firstTrailingBit(_wgslsmith_mod_u32(global0.x, global0.x))));
    let var_1 = min(arg_2, select(vec4<i32>(arg_2.x, -54479i >> (countOneBits(0u) % 32u), -1i, -(~(-75620i))), vec4<i32>(arg_2.x, ~firstLeadingBit(21401i), _wgslsmith_dot_vec4_i32(arg_2, min(vec4<i32>(arg_2.x, -6870i, -1i, arg_2.x), vec4<i32>(u_input.b, 0i, 956i, -2147483647i))), abs(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(arg_2.x, -11464i, u_input.a.x, arg_2.x)))), !select(!vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(false, true, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))));
    let var_2 = vec3<i32>(u_input.a.x, 47429i, ~_wgslsmith_div_i32(func_3(global1[_wgslsmith_index_u32(global0.x, 24u)]), (-2147483647i >> (global0.x % 32u)) >> (101507u % 32u)));
    var var_3 = ~global0.yz;
    var var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 115410u, 4294967295u, global0.x), vec4<u32>(var_3.x, 29836u, 33999u, 1u), vec4<u32>(1u, 4294967295u, 3110u, 15762u)) ^ min(vec4<u32>(var_3.x, 4294967295u, var_0.a, 29113u), vec4<u32>(var_3.x, var_0.a, 0u, 4294967295u) & vec4<u32>(var_3.x, var_0.a, 0u, global0.x)), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<u32>(var_0.a, 30051u, 38638u, global0.x)), vec4<u32>(var_3.x, var_0.a, 0u, 27971u)))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(28638u, var_3.x, var_3.x, var_3.x), vec4<u32>(global0.x, 72724u, 4294967295u, var_0.a)), ~vec4<u32>(global0.x, 57015u, var_3.x, 1u), ~vec4<u32>(49533u, 1u, 1u, 17455u)), min(vec4<u32>(1u, var_3.x, 4294967295u, 58405u) & vec4<u32>(30082u, 1u, var_3.x, 1u), abs(vec4<u32>(global0.x, global0.x, var_0.a, global0.x)))) & ~(~select(vec4<u32>(1u, var_3.x, 1u, 47492u), vec4<u32>(4294967295u, 25502u, 1332u, var_0.a), arg_1.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2330f, _wgslsmith_f_op_f32(round(1955f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(false, Struct_1(15995u, vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(68083u, 11u)], global0.x), global0.x)), _wgslsmith_div_f32(458f, 1914f)))), -559f, -520f, 655f) - _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1198f * 1967f), -1378f, _wgslsmith_f_op_f32(f32(-1f) * -1081f), 319f)), vec2<bool>(any(global2[_wgslsmith_index_u32(4294967295u, 11u)]) & false, true), ~abs(~vec4<i32>(0i, u_input.b, u_input.a.x, -2147483647i)))));
    var var_2 = Struct_1(firstTrailingBit(1u), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), !(var_1.x > var_1.x)), select(vec3<bool>(true, true, 12449u <= global0.x), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), _wgslsmith_div_i32(var_0.x, u_input.b) >= var_0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(global2[_wgslsmith_index_u32(global0.x, 11u)])), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true)), vec2<bool>(true, min(global0.x, global0.x | global0.x) == _wgslsmith_add_u32(0u, global0.x ^ 20419u)), firstTrailingBit(~0u));
    global0 = vec4<u32>(~(4294967295u | reverseBits(var_2.a)), 1u, ~var_2.d, global0.x) << (~(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.a, global0.x, global0.x), vec4<u32>(6451u, global0.x, var_2.a, 1u)))) % vec4<u32>(32u));
    let var_3 = Struct_1(1u, select(!vec3<bool>(var_2.b.x, false, false), !vec3<bool>(!var_2.c.x, any(vec4<bool>(var_2.b.x, false, var_2.b.x, var_2.c.x)), false), vec3<bool>(var_2.c.x, !any(vec4<bool>(var_2.b.x, false, false, false)), select(true, any(vec4<bool>(true, false, var_2.b.x, false)), true))), global2[_wgslsmith_index_u32(var_2.a, 11u)], ~(~global0.x));
    let var_4 = global1[_wgslsmith_index_u32(var_2.d, 24u)];
    global1 = array<Struct_2, 24>();
    let var_5 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_4.a, global0.x, 4294967295u) ^ (global0.zyw << (vec3<u32>(1u, 1u, var_3.d) % vec3<u32>(32u)))), ~vec3<u32>(global0.x, 0u, select(var_2.a, var_2.a, var_3.c.x)))), 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zzx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(419f * 287f)) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2323f, -610f, var_1.x, var_1.x) + vec4<f32>(818f, var_1.x, var_1.x, 421f)))), select(select(var_3.b.zz, var_3.c, var_3.c.x), vec2<bool>(false, true), true), ~vec4<i32>(-70380i, -50830i, 25636i, 2147483647i))).x), ~_wgslsmith_sub_vec4_i32(~(-vec4<i32>(34002i, u_input.a.x, var_0.x, -62256i)), vec4<i32>(u_input.b, 9732i >> (var_5.a % 32u), ~(-9959i), ~(-29395i))));
}

