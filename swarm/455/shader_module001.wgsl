struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1574f, 481f, 636f, 483f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = -2147483647i;
    var var_1 = Struct_4(Struct_2(Struct_1(-1i, u_input.c, arg_0.x)), Struct_2(Struct_1(u_input.b.x ^ 2147483647i, ~vec2<u32>(u_input.c.x, 97u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 0u)) % vec2<u32>(32u)), false)), vec2<bool>(_wgslsmith_div_f32(-1485f, _wgslsmith_f_op_f32(-1175f - global0.x)) > _wgslsmith_f_op_f32(2169f + 1000f), select(true, !arg_0.x, u_input.a.x != var_0) & (1i == (u_input.b.x >> (u_input.c.x % 32u)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(1155f * global0.x), _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, 535f, 520f, -1792f)))))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -130f))))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(774f + 958f)), 1609f);
    return firstLeadingBit(~(~u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(350f, global0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 1783f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global0.x)))))), 1227f);
    let var_0 = -5873i & u_input.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1135f, 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 150f), 733f), -260f, -1481f)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x))), vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), global0.x, _wgslsmith_f_op_f32(461f * global0.x), -1418f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1012f, global0.x, 135f) + vec4<f32>(444f, global0.x, -675f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1224f, global0.x, global0.x), vec4<f32>(674f, global0.x, -1496f, 1300f))))));
    var var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.c, ~vec2<u32>(arg_1, arg_1)), vec2<u32>(_wgslsmith_add_u32(36371u, abs(u_input.c.x)), u_input.c.x)) << (vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, ~u_input.c.x), ~1u) % vec2<u32>(32u));
    return Struct_2(Struct_1(func_3(!select(vec3<bool>(true, arg_0, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, true))), vec2<u32>(~arg_1 | ~1u, 29019u), any(!select(vec3<bool>(false, arg_0, true), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_2 {
    let var_0 = 20387u;
    return arg_1.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.c.x;
    let var_1 = func_4(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), Struct_4(Struct_2(Struct_1(-u_input.b.x, select(vec2<u32>(var_0, var_0), vec2<u32>(1u, u_input.c.x), vec2<bool>(false, false)), any(vec3<bool>(true, true, true)))), func_2(false, arg_0.x), vec2<bool>(true, true)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(435f))) > -1000f, -firstLeadingBit(1i), u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))), func_2(all(vec4<bool>(true, true, true, true)), 1u).a));
    var var_2 = var_1.a;
    var_2 = func_2(var_1.a.c, ~var_1.a.b.x).a;
    let var_3 = vec2<bool>(!any(!vec4<bool>(var_1.a.c, var_2.c, var_2.c, var_2.c)) & true, all(select(vec3<bool>(var_1.a.c, var_2.c, false), vec3<bool>(var_2.c, var_2.c, true), true)));
    return func_4(vec3<bool>(!((var_1.a.c == var_1.a.c) & true), var_3.x, false), Struct_4(var_1, var_1, vec2<bool>(all(vec4<bool>(false, var_1.a.c, false, var_1.a.c)), var_2.c)), Struct_3(var_1.a.c || (true == any(vec2<bool>(true, true))), -28327i, countOneBits(select(u_input.a, u_input.b.zw >> (vec2<u32>(4294967295u, var_2.b.x) % vec2<u32>(32u)), !vec2<bool>(true, var_3.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1746f)), Struct_1(func_4(!vec3<bool>(false, var_3.x, var_1.a.c), Struct_4(var_1, var_1, var_3), Struct_3(var_1.a.c, 2147483647i, u_input.b.yw, 936f, Struct_1(39820i, var_1.a.b, var_1.a.c))).a.a, _wgslsmith_add_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.x, 1750u), var_2.b)), var_2.c)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-187f, -754f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))), vec4<f32>(global0.x, 1000f, -334f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global0.x)))))));
    let var_0 = _wgslsmith_mult_i32(arg_0.a.a, -u_input.a.x);
    var var_1 = _wgslsmith_mod_u32(0u, func_4(select(select(vec3<bool>(false, arg_0.a.c, arg_0.a.c), vec3<bool>(true, true, true), var_0 <= -2147483647i), select(vec3<bool>(false, false, arg_0.a.c), select(vec3<bool>(false, arg_0.a.c, true), vec3<bool>(true, arg_0.a.c, true), vec3<bool>(arg_0.a.c, false, arg_0.a.c)), arg_0.a.c), func_1(arg_0.a.b).a.c), Struct_4(arg_0, Struct_2(func_2(false, 1u).a), vec2<bool>(false, false)), Struct_3(arg_0.a.b.x >= 1u, -15762i, reverseBits(u_input.a), global0.x, Struct_1(1i, vec2<u32>(0u, 4294967295u), true))).a.b.x);
    let var_2 = 4294967295u;
    var_1 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 700f)) - global0.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1634f + global0.x), _wgslsmith_f_op_f32(-1000f - -821f)))) + global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1009f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-620f, _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_div_f32(-308f, -433f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1504f, global0.x) * global0.x), 750f)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)), _wgslsmith_f_op_f32(func_5(func_1(~vec2<u32>(0u, 50403u)), u_input.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), 1f, _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(u_input.b.x, vec2<u32>(u_input.c.x, u_input.c.x), false)), u_input.a.x)), _wgslsmith_f_op_f32(global0.x - -925f))), _wgslsmith_f_op_f32(f32(-1f) * -667f))));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -346f))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-287f, 2414f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-961f)), _wgslsmith_div_f32(1000f, global0.x), 1u > u_input.c.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(309f, global0.x, -684f, -1044f), vec4<f32>(global0.x, -1778f, global0.x, -342f), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1425f, global0.x, 1736f) * vec4<f32>(1657f, global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), 745f, global0.x)))));
    let var_0 = func_2(true, ~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 1u))).a;
    var var_1 = vec3<bool>(true, !(false | (~var_0.b.x > ~92690u)), var_0.c);
    let var_2 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~u_input.c.x)), var_0.b.x);
}

