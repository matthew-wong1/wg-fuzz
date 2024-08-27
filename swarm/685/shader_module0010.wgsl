struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 10> = array<i32, 10>(0i, -255i, 51650i, 541i, -1i, 15609i, -1i, 2147483647i, -52164i, -34220i);

var<private> global2: f32;

var<private> global3: vec4<u32> = vec4<u32>(54095u, 0u, 54753u, 17333u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(656f, 529f)), -1141f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1690f);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    global3 = ~(~u_input.c);
    let var_0 = select(select(select(!select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, false, arg_0.a), false), vec3<bool>(false, false, !arg_0.a), select(!vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, false), !arg_0.a)), select(vec3<bool>(any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), all(vec4<bool>(arg_0.a, true, arg_0.a, false)), arg_0.a), !select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), true), true), any(select(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, true, arg_0.a, arg_0.a), true), 4478u == global3.x))), select(vec3<bool>(!arg_0.a, arg_0.a, any(vec4<bool>(true, true, arg_0.a, false)) | !arg_0.a), select(vec3<bool>(arg_0.a, true, true), vec3<bool>(true, 4294967295u != global3.x, any(vec3<bool>(true, arg_0.a, false))), any(!vec2<bool>(false, arg_0.a))), any(!(!vec4<bool>(arg_0.a, false, arg_0.a, true)))), arg_0.a);
    global3 = select(vec4<u32>(global3.x, _wgslsmith_sub_u32(4294967295u, ~0u), global3.x, _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(u_input.c, u_input.c))), countOneBits(~max(u_input.c, u_input.c)), select(vec4<bool>(all(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), arg_0.a, true, arg_1.x < arg_0.b.x), vec4<bool>(!var_0.x, true, all(var_0.xy), all(vec3<bool>(arg_0.a, var_0.x, true))), select(!vec4<bool>(var_0.x, false, arg_0.a, false), vec4<bool>(true, true, true, true), true))) | ~vec4<u32>(1u, (global3.x >> (u_input.c.x % 32u)) ^ global3.x, 64819u, 6402u);
    global1 = array<i32, 10>();
    let var_1 = ~firstTrailingBit(~u_input.c) << (vec4<u32>(8117u, ~74199u, _wgslsmith_div_u32(global3.x, global3.x), abs(abs(global3.x))) % vec4<u32>(32u));
    return var_0.xx;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(200f)));
    let var_0 = select(select(vec2<bool>(true, true), arg_3.wz, false), func_3(Struct_1(arg_3.x, _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(7542i, global1[_wgslsmith_index_u32(73765u, 10u)], u_input.a, 0i), vec4<bool>(true, arg_3.x, arg_3.x, true)), vec4<i32>(-1i, -1i, global1[_wgslsmith_index_u32(72043u, 10u)], u_input.b))), vec4<i32>(-u_input.b, -(~0i), ~u_input.a, ~u_input.b)), vec2<bool>(true, true));
    global0 = 290f;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 34514u), ~0u, arg_0);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -695f), -1445f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(f32(-1f) * -380f))), _wgslsmith_f_op_f32(func_1(Struct_3(countOneBits(var_1), select(vec2<bool>(arg_3.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), Struct_1(false, vec4<i32>(global1[_wgslsmith_index_u32(7505u, 10u)], u_input.a, 33608i, 1i)), Struct_1(false, vec4<i32>(3865i, global1[_wgslsmith_index_u32(0u, 10u)], u_input.a, -6763i)), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], u_input.a)), ~(~vec2<u32>(85260u, 0u)))), all(!(!vec2<bool>(true, arg_3.x))))));
    return Struct_3(countOneBits(global3.x), !arg_3.yw, Struct_1(arg_3.x, vec4<i32>(0i, countOneBits(~(-2147483647i)), ~_wgslsmith_div_i32(u_input.a, -30057i), -33417i)), Struct_1(!var_0.x, _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], u_input.a, -2147483647i, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(arg_1.x, 10u)], u_input.b, 2147483647i, u_input.a)), vec4<i32>(global1[_wgslsmith_index_u32(global3.x, 10u)], 3721i, global1[_wgslsmith_index_u32(64235u, 10u)], -2147483647i), vec4<i32>(u_input.a, u_input.a, 1i, -14013i) & vec4<i32>(-19295i, 2147483647i, u_input.b, 2147483647i)) ^ firstLeadingBit(-vec4<i32>(global1[_wgslsmith_index_u32(80172u, 10u)], u_input.a, u_input.b, u_input.a))), _wgslsmith_dot_vec3_i32(select(-(vec3<i32>(0i, global1[_wgslsmith_index_u32(0u, 10u)], u_input.b) | vec3<i32>(u_input.b, 19690i, -2147483647i)), vec3<i32>(-1i, 12122i, 1i), true), firstTrailingBit(vec3<i32>(~1i, 41279i, -global1[_wgslsmith_index_u32(1u, 10u)]))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    global3 = select(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(0u), _wgslsmith_add_u32(global3.x, 0u), ~9925u, _wgslsmith_add_u32(86849u, arg_2.a)), u_input.c, ~vec4<u32>(46961u, 61027u, global3.x, 29571u))), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 84939u, 1u, u_input.c.x), vec4<u32>(global3.x, 0u, 0u, global3.x), vec4<u32>(global3.x, 4294967295u, global3.x, arg_2.a)) ^ ~vec4<u32>(31494u, arg_0.a, arg_0.d, 14142u)), ~vec4<u32>(~u_input.c.x, _wgslsmith_mod_u32(0u, arg_2.a), 33761u, u_input.c.x)), !(!(!(!vec4<bool>(true, true, arg_2.b.x, true)))));
    var var_0 = Struct_2(94029i);
    let var_1 = !vec4<bool>(true, arg_2.b.x, all(select(func_3(arg_2.d, arg_2.d.b), func_2(global3.x, global3.zx, global3.yw, vec4<bool>(false, false, arg_2.d.a, true)).b, 16378u >= u_input.c.x)), !arg_2.c.a);
    global0 = -1000f;
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.c), arg_0.c));
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(0u, ~21140u), _wgslsmith_add_u32(~arg_2.a ^ _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_add_u32(_wgslsmith_mod_u32(63239u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(17663u, global3.x, u_input.c.x, 4294967295u), u_input.c)))), 10u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_4(_wgslsmith_mod_u32(1u, select(22322u, ~abs(global3.x), var_0)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f + 1097f))))), countOneBits(global3.x));
    var_1 = Struct_4(global3.x, !var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.c) - -2677f))))), 0u);
    var var_2 = Struct_5(vec2<u32>(1u, 1u >> (~max(u_input.c.x, 16904u) % 32u)), vec4<i32>(~select(~u_input.b, u_input.b, false), _wgslsmith_div_i32(1i, u_input.b), -_wgslsmith_sub_i32(~0i, global1[_wgslsmith_index_u32(var_1.a, 10u)] & -43687i), 6721i));
    var var_3 = func_4(Struct_4(~max(4537u, _wgslsmith_mult_u32(25858u, 1u)), var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(4294967295u, vec2<bool>(var_0, var_1.b), Struct_1(false, vec4<i32>(global1[_wgslsmith_index_u32(21534u, 10u)], global1[_wgslsmith_index_u32(var_2.a.x, 10u)], u_input.b, u_input.a)), Struct_1(var_1.b, var_2.b), global1[_wgslsmith_index_u32(var_2.a.x, 10u)]), u_input.c.zw))))), ~var_2.a.x), var_1.b, func_2(countOneBits(u_input.c.x), _wgslsmith_mult_vec2_u32(u_input.c.xw, global3.zx), ~select(u_input.c.wy, u_input.c.xx, vec2<bool>(true, var_1.b)), select(vec4<bool>(true, true, false, var_1.b), vec4<bool>(!var_0, all(vec2<bool>(false, var_0)), var_0, !var_0), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_clamp_i32(-var_3.a, select(_wgslsmith_sub_i32(var_2.b.x, 2147483647i), ~_wgslsmith_sub_i32(2147483647i, var_3.a), var_1.b), max(-firstLeadingBit(-27661i), firstTrailingBit(~58549i))), global3.zyz ^ _wgslsmith_div_vec3_u32(u_input.c.wwz, vec3<u32>(~u_input.c.x, var_2.a.x, global3.x)), u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1287f, var_1.c, var_1.c, var_1.c) * vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, 221f, -366f, var_1.c))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1019f, var_1.c, var_1.c, 314f), vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, var_1.c, 1023f, var_1.c), vec4<f32>(-1261f, var_1.c, 1590f, var_1.c))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, -108f, -1837f, -892f), vec4<f32>(var_1.c, var_1.c, 1204f, var_1.c)))), !(!var_0)))));
}

