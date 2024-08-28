struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec2<i32>(1i, -4705i), Struct_1(vec2<i32>(57983i, 20259i), 441f, vec3<i32>(-16907i, -8756i, 1i)), vec4<f32>(-151f, -1819f, 533f, 1000f), false), Struct_3(vec2<i32>(0i, -29882i), Struct_1(vec2<i32>(i32(-2147483648), 1i), 401f, vec3<i32>(-7961i, -56232i, 1i)), vec4<f32>(-1442f, 1290f, -364f, 566f), false), Struct_3(vec2<i32>(-1i, 23934i), Struct_1(vec2<i32>(-40729i, 2147483647i), 320f, vec3<i32>(0i, i32(-2147483648), 1i)), vec4<f32>(-352f, -280f, -1013f, -133f), true), Struct_3(vec2<i32>(-35215i, 0i), Struct_1(vec2<i32>(-550i, -5520i), 729f, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), vec4<f32>(-441f, -251f, 559f, 1522f), false), Struct_3(vec2<i32>(6317i, -21285i), Struct_1(vec2<i32>(0i, -54039i), 295f, vec3<i32>(i32(-2147483648), 41309i, i32(-2147483648))), vec4<f32>(-248f, -1000f, 1666f, -274f), false), Struct_3(vec2<i32>(-1i, 13066i), Struct_1(vec2<i32>(-16608i, 57682i), 2387f, vec3<i32>(-24058i, 7966i, 0i)), vec4<f32>(-410f, 700f, 954f, -466f), true), Struct_3(vec2<i32>(-39764i, 0i), Struct_1(vec2<i32>(2147483647i, 46415i), -226f, vec3<i32>(15530i, -29073i, 3723i)), vec4<f32>(1220f, -339f, 800f, 165f), true), Struct_3(vec2<i32>(1i, 2147483647i), Struct_1(vec2<i32>(-28048i, 65856i), -171f, vec3<i32>(32949i, -42545i, 1i)), vec4<f32>(-2167f, -1864f, 936f, 570f), true));

var<private> global1: Struct_3;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 + global1.b.b), -317f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f - _wgslsmith_f_op_f32(-arg_1)))));
    global0 = array<Struct_3, 8>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-143f + _wgslsmith_f_op_f32(-2402f + -1181f))))) * 1062f);
    let var_1 = global1.c.wyy;
    global0 = array<Struct_3, 8>();
    return Struct_1(_wgslsmith_add_vec2_i32(global1.b.c.zy, vec2<i32>(_wgslsmith_mod_i32(-21554i, ~u_input.d), ~global1.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - arg_1)) - _wgslsmith_f_op_f32(var_1.x - var_1.x))), abs(vec3<i32>(-2147483647i, reverseBits(u_input.a.x), 1i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), arg_1.b.wxw)));
    var_0 = arg_1.b.yzw;
    let var_1 = abs(_wgslsmith_dot_vec4_u32(min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.d, 34252u, 2840u), vec4<u32>(u_input.c, 34842u, 4294967295u, 0u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 0u, arg_1.c.x, 9127u), vec4<u32>(arg_1.d, u_input.c, 66450u, 4294967295u), vec4<u32>(34061u, 1u, arg_1.c.x, 4294967295u))), vec4<u32>(4294967295u, ~1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_1.d, 2696u, 0u)), 1u) ^ ~firstLeadingBit(vec4<u32>(u_input.c, arg_1.c.x, arg_1.c.x, 59011u))));
    global1 = global0[_wgslsmith_index_u32(~(countOneBits(var_1) | arg_1.c.x), 8u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(f32(-1f) * -262f)))));
    return _wgslsmith_f_op_f32(ceil(global1.c.x));
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = global1.b;
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    let var_1 = true;
    var var_2 = Struct_3(vec2<i32>(-9867i, -(15067i >> (u_input.c % 32u)) >> (14566u % 32u)), func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f - 1642f))), global1.c, select(true, !arg_0, false));
    return Struct_2(Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(var_2.b.c.xz, -var_2.b.c.zy)), _wgslsmith_f_op_f32(exp2(var_2.c.x)), vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(1680i), -1i), ~var_0.a.x & ~45292i, ~(-26030i) ^ (var_2.b.a.x | u_input.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(select(arg_0, arg_0, arg_0), Struct_2(Struct_1(var_0.c.yx, var_2.b.b, vec3<i32>(var_2.b.a.x, u_input.d, var_0.a.x)), var_2.c, u_input.b, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, arg_1)) - var_2.b.b), -1541f, global1.c.x)), ~vec3<u32>(max(u_input.c, ~u_input.b.x), ~(u_input.c | u_input.c), _wgslsmith_mult_u32(countOneBits(u_input.b.x), 36358u)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, min(abs(4294967295u), _wgslsmith_mult_u32(u_input.c, 4294967295u))), _wgslsmith_sub_u32(firstLeadingBit(u_input.b.x), 24306u), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(!global1.d & (_wgslsmith_div_f32(global1.b.b, -703f) != 1f), global1.b.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b)), global1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.x)))));
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_0.a.c.x), ~vec2<i32>(u_input.d, 2147483647i) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) & func_1(u_input.b.x == 1u, var_0.a.b).a.a, _wgslsmith_f_op_f32(select(745f, -253f, false)), vec3<i32>(reverseBits(~func_1(global1.d, global1.b.b).a.a.x), -2147483647i, (~u_input.a.x << (var_0.d % 32u)) ^ (i32(-1i) * -32501i)));
    let var_2 = ~(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_0.d, 1u)) >> (vec3<u32>(u_input.b.x, var_0.c.x, var_0.d) % vec3<u32>(32u)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(27293u, func_1(false, global1.c.x).d), 78982u), ~1u, var_2.x), -select(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, var_1.a.x, var_0.a.a.x, -67584i)), vec4<i32>(u_input.d, var_1.a.x, -30811i, 30618i)), ~countOneBits(vec4<i32>(var_0.a.a.x, var_1.a.x, -91901i, 72807i)), vec4<bool>(true, global1.d | global1.d, true, global1.d || false)));
}

