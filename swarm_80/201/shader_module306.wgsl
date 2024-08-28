struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    let var_0 = u_input.b;
    let var_1 = arg_1.zz;
    global1 = array<vec2<f32>, 12>();
    let var_2 = Struct_1(4967i, _wgslsmith_div_vec4_u32(vec4<u32>(1u, global0.b.x, 0u, _wgslsmith_dot_vec4_u32(min(global0.b, vec4<u32>(4294967295u, global0.b.x, global0.b.x, global0.b.x)), max(global0.b, global0.b))), countOneBits(~(global0.b | vec4<u32>(8871u, global0.b.x, global0.b.x, global0.b.x)))), all(select(arg_1.yyz, arg_1.zyy, all(!vec2<bool>(global0.c, global0.d)))), true | !(var_0 <= reverseBits(0i)), reverseBits(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(74416i, 2147483647i, 1i), ~(-23756i))) & _wgslsmith_mod_i32(var_0, ~(-45926i)));
    var var_3 = var_2;
    return firstTrailingBit(~_wgslsmith_add_i32((u_input.a << (var_2.b.x % 32u)) ^ 33789i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(13502i, global0.e)), min(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 16391i)))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = Struct_1(firstTrailingBit(-(~(~arg_3))), arg_2.b, all(!vec2<bool>(true & global0.c, true)), true, arg_3);
    let var_1 = var_0.b.x;
    var var_2 = 2147483647i;
    let var_3 = Struct_2(global0.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(886f, arg_0.b.x, -2318f)))), arg_0.b, arg_1)), var_0);
    var var_4 = arg_0.c.b.wz | var_0.b.ww;
    return 1u;
}

fn func_2() -> vec2<bool> {
    global1 = array<vec2<f32>, 12>();
    global1 = array<vec2<f32>, 12>();
    global0 = Struct_1(-40817i, vec4<u32>(global0.b.x, global0.b.x, 47205u, select(func_4(Struct_2(16615u, vec3<f32>(1314f, 766f, -894f), Struct_1(-2147483647i, global0.b, global0.d, global0.c, -1i)), global0.c, Struct_1(12749i, global0.b, global0.d, global0.c, global0.e), func_3(-1274f, vec4<bool>(global0.d, global0.c, global0.c, true))), ~(global0.b.x & global0.b.x), select(false, true, false))), true, !(!all(vec3<bool>(global0.d, true, true))), _wgslsmith_mult_i32(u_input.a, firstTrailingBit(-56700i)));
    var var_0 = vec4<f32>(144f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(1000f + 515f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-951f * -2244f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f * 3277f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(135f, 158f)), -224f))))));
    let var_1 = -(~(_wgslsmith_mult_i32(u_input.a, u_input.a) >> (reverseBits(21550u) % 32u)));
    return select(select(!select(select(vec2<bool>(global0.d, false), vec2<bool>(global0.d, global0.d), global0.c), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), any(select(vec3<bool>(global0.d, global0.d, false), !vec3<bool>(global0.d, false, true), true))), vec2<bool>(global0.d, false), any(!select(vec3<bool>(false, global0.d, false), !vec3<bool>(global0.d, global0.c, global0.d), vec3<bool>(global0.d, true, false))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(~(abs(1u) | _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.b.x, global0.b.x), 10115u)));
    var var_1 = !func_2();
    let var_2 = Struct_2(~var_0, vec3<f32>(_wgslsmith_f_op_f32(135f - _wgslsmith_f_op_f32(-581f + _wgslsmith_f_op_f32(-1315f + 254f))), 1f, 730f), Struct_1(max(select(~(-2147483647i), -2147483647i, true), (u_input.a << (global0.b.x % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(45478u, var_0, 0u), vec3<u32>(global0.b.x, var_0, 21264u)) % 32u)), global0.b, func_2().x, true, ~(-countOneBits(2147483647i))));
    var var_3 = var_2.c;
    var_1 = func_2();
    return Struct_2(_wgslsmith_add_u32(~var_0, var_0) | (reverseBits(14781u) & ~(12271u << (global0.b.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.b.x)), var_2.b.x, var_2.b.x), var_2.c);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = -1448f;
    let var_1 = _wgslsmith_clamp_vec4_u32(select(vec4<u32>(func_4(Struct_2(arg_1.a, arg_1.b, arg_1.c), func_1().c.d, arg_1.c, 1i), 1u, 4294967295u, 42816u), reverseBits(vec4<u32>(_wgslsmith_sub_u32(arg_1.c.b.x, 4294967295u), global0.b.x, 4294967295u ^ arg_1.c.b.x, ~arg_0)), !vec4<bool>(global0.c & false, arg_1.c.c, select(false, arg_1.c.c, true), true)), vec4<u32>(arg_0, arg_0, arg_0, ~(~arg_1.c.b.x) & ((arg_1.a << (arg_1.c.b.x % 32u)) & 4294967295u)), arg_1.c.b);
    return func_1();
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = arg_1.c.c;
    var var_1 = Struct_2(arg_1.a | global0.b.x, arg_1.b, func_1().c);
    global0 = func_1().c;
    var_1 = arg_1;
    global0 = var_1.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.x;
    var var_1 = -1974f;
    var var_2 = vec3<bool>(global0.d, global0.d, global0.d && global0.c);
    let var_3 = vec2<f32>(1f, _wgslsmith_f_op_f32(floor(1f)));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1451f);
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-501f)))));
    let var_5 = vec4<bool>(false, func_6(abs(~(-vec3<i32>(12169i, 58309i, 2147483647i))), func_5(_wgslsmith_mod_u32(_wgslsmith_sub_u32(26402u, global0.b.x), 0u), func_1(), var_4), _wgslsmith_f_op_f32(ceil(-691f))), true, all(select(vec4<bool>(546f == var_4, true, !var_2.x, false), !vec4<bool>(global0.c, true, false, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(972f, ~vec4<i32>(_wgslsmith_sub_i32(u_input.a, -global0.e), -2147483647i, i32(-1i) * -u_input.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-42158i, u_input.b), vec2<i32>(global0.e, 0i))));
}

