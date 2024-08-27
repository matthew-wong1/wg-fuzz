struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = arg_0;
    global0 = true || all(vec2<bool>(arg_0.a, !arg_0.a));
    var var_1 = _wgslsmith_mod_vec4_u32(~select(vec4<u32>(countOneBits(arg_2.d.b), arg_0.b, 1u, arg_0.b), vec4<u32>(21472u, arg_2.e.b, 42947u, arg_1), vec4<bool>(arg_0.a, false, select(false, var_0.a, var_0.a), all(vec4<bool>(false, arg_0.a, arg_2.d.a, arg_2.b.a)))), vec4<u32>(14967u, _wgslsmith_mod_u32(arg_0.b, arg_0.b), 48585u, abs(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b, var_0.b), arg_2.d.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(520f, arg_2.a, _wgslsmith_f_op_f32(floor(-600f)), _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, arg_2.a, -2118f) * vec4<f32>(-1447f, -489f, arg_2.a, arg_2.a)))), arg_2.b.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1464f), _wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(round(-866f)), arg_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1445f, arg_2.a, arg_2.a, arg_2.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, 221f, -1040f, -1000f))))));
    var var_3 = arg_2;
    return arg_2.d.b;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> bool {
    return _wgslsmith_f_op_f32(1127f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1839f - _wgslsmith_f_op_f32(arg_1.a + arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), !arg_3.a)));
}

fn func_2(arg_0: i32) -> bool {
    global0 = func_4(~u_input.b.x, Struct_2(_wgslsmith_f_op_f32(-455f - -514f), Struct_1(true, u_input.b.x), func_3(Struct_1(true, u_input.b.x), 14245u, Struct_2(408f, Struct_1(true, 0u), 0u << (u_input.b.x % 32u), Struct_1(false, 0u), Struct_1(false, 118365u))), Struct_1(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), ~2938u), Struct_1(true, abs(~11586u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(983f)), _wgslsmith_f_op_f32(sign(-467f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(454f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(282f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(552f)))), all(vec2<bool>(all(vec4<bool>(false, true, false, true)), true)))), Struct_1(true, abs(u_input.b.x)));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -687f))), Struct_1(false, ~1u), u_input.b.x, Struct_1(any(vec3<bool>(true, true, all(vec3<bool>(false, false, false)))), u_input.b.x), Struct_1(true, _wgslsmith_mod_u32(~13451u, _wgslsmith_div_u32(1u, u_input.b.x))));
    global0 = !var_0.b.a;
    var var_1 = var_0.d;
    let var_2 = ~arg_0;
    return any(!select(select(!vec2<bool>(var_1.a, var_1.a), select(vec2<bool>(var_1.a, var_0.b.a), vec2<bool>(var_0.b.a, var_1.a), var_1.a), true), vec2<bool>(false, true), all(vec4<bool>(var_1.a, true, var_0.e.a, true))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(1000f, Struct_1(func_2(abs(~(-9345i))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u), u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 79014u, 4768u), u_input.b)), u_input.b)), func_3(Struct_1(true, 1u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), Struct_2(-1216f, Struct_1(any(vec4<bool>(false, false, false, true)), 87337u), u_input.b.x, Struct_1(any(vec4<bool>(true, false, true, true)), ~27796u), Struct_1(func_2(1i), 24598u | u_input.b.x))), Struct_1(all(vec2<bool>(true, true)), abs(16953u)), Struct_1(!all(vec4<bool>(false, true, true, true)), u_input.b.x));
    global0 = func_2(u_input.c.x);
    var var_1 = 2914u;
    let var_2 = var_0.d;
    let var_3 = var_0.b;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = Struct_2(786f, func_1(), ~u_input.b.x & ~reverseBits(u_input.b.x >> (u_input.b.x % 32u)), func_1(), Struct_1(any(vec3<bool>(true, false, false)) & true, u_input.b.x));
    global0 = !var_0.d.a;
    let var_1 = select(u_input.c, vec3<i32>(_wgslsmith_mod_i32(~(~4691i), _wgslsmith_div_i32(min(-1i, 0i), u_input.c.x)), 26075i, u_input.a.x), !var_0.d.a);
    let var_2 = vec3<bool>(var_0.a <= var_0.a, any(vec3<bool>(false, true, true)), 1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(~87737u, ~u_input.b.x, _wgslsmith_mult_u32(70388u, u_input.b.x)), vec3<u32>(~var_0.b.b, ~u_input.b.x, 31170u)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(var_0.a)), func_1(), 68390u, func_1(), Struct_1(true, ~50099u));
    var var_4 = ~max(countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-15524i, var_1.x, -11246i, -1i), ~vec4<i32>(3157i, var_1.x, var_1.x, u_input.a.x), -vec4<i32>(2147483647i, var_1.x, 0i, var_1.x))), vec4<i32>(var_1.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 2147483647i, u_input.c.x, -1i)), -vec4<i32>(var_1.x, -12611i, 1i, u_input.c.x)), select(0i, var_1.x, true), ~_wgslsmith_dot_vec2_i32(var_1.zz, u_input.a)));
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(61924u);
}

