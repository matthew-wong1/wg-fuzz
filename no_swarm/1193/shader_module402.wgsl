struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<i32>(-13250i, 0i, -1i, -14727i), vec4<f32>(940f, 1706f, 263f, -678f), vec3<bool>(false, true, false), 50765u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = Struct_3(global0.a);
    var var_0 = arg_0.a;
    global0 = Struct_3(global0.a);
    var var_1 = _wgslsmith_clamp_u32(countOneBits(~0u), 4294967295u, ~1u);
    var var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 60651i)), vec2<i32>(~var_0.a.x, countOneBits(2422i))), countOneBits(vec2<i32>(_wgslsmith_mult_i32(1i, var_0.a.x), -u_input.a.x)));
    return global0.a.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>) -> i32 {
    global0 = Struct_3(global0.a);
    let var_0 = vec2<i32>(2854i, 2147483647i);
    global0 = arg_0;
    global0 = Struct_3(Struct_1(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, -9597i, arg_0.a.a.x, u_input.a.x), arg_0.a.a & vec4<i32>(global0.a.a.x, 31859i, 13775i, global0.a.a.x), vec4<bool>(arg_0.a.c.x, true, arg_0.a.c.x, false)), _wgslsmith_div_vec4_i32(abs(arg_0.a.a), ~vec4<i32>(var_0.x, u_input.a.x, arg_0.a.a.x, arg_0.a.a.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(630f)))), _wgslsmith_div_f32(global0.a.b.x, -1000f), arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.x + global0.a.b.x)))), vec3<bool>(global0.a.c.x, func_3(Struct_2(arg_0.a, u_input.a.x)), !all(vec4<bool>(global0.a.c.x, arg_0.a.c.x, true, false))), _wgslsmith_sub_u32(max(global0.a.d, 99278u) ^ arg_0.a.d, firstTrailingBit(_wgslsmith_sub_u32(arg_0.a.d, 31139u)))));
    var var_1 = true;
    return var_0.x & (global0.a.a.x & -2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-1579f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = arg_1.b.x;
    var var_1 = (vec4<u32>(_wgslsmith_sub_u32(~arg_0.a.d, _wgslsmith_sub_u32(arg_0.a.d, arg_1.d)), ~(~1u), arg_0.a.d | _wgslsmith_mod_u32(global0.a.d, global0.a.d), arg_1.d) | abs(vec4<u32>(1u, ~arg_0.a.d, 16732u, arg_0.a.d))) & ~(~firstTrailingBit(vec4<u32>(872u, 2260u, arg_0.a.d, arg_1.d)));
    let var_2 = arg_1.c;
    global0 = Struct_3(Struct_1(abs(~global0.a.a) >> (vec4<u32>(_wgslsmith_mod_u32(arg_1.d, 17251u), arg_1.d, _wgslsmith_mod_u32(var_1.x, arg_1.d), _wgslsmith_mod_u32(arg_2.a.d, 24914u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a.b - arg_0.a.b) * _wgslsmith_f_op_vec4_f32(-arg_0.a.b)), vec3<bool>(true, false, !any(vec4<bool>(arg_0.a.c.x, arg_3.x, var_2.x, true))), ~(arg_1.d << ((arg_1.d >> (4294967295u % 32u)) % 32u))));
    return Struct_3(Struct_1(vec4<i32>(~14123i, arg_2.b, arg_1.a.x, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, 134f, global0.a.b.x, -214f), global0.a.b, vec4<bool>(var_2.x, true, true, arg_2.a.c.x))), _wgslsmith_f_op_vec4_f32(min(global0.a.b, arg_2.a.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 900f, -712f, arg_0.a.b.x)) * vec4<f32>(-1352f, arg_1.b.x, -209f, arg_0.a.b.x))), arg_0.a.c, select(~4294967295u, _wgslsmith_sub_u32(var_1.x, 14338u), arg_1.b.x > arg_0.a.b.x) >> (arg_0.a.d % 32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec2<bool> {
    global0 = func_4(Struct_2(global0.a, func_2(Struct_3(global0.a), _wgslsmith_f_op_f32(-global0.a.b.x), vec3<f32>(global0.a.b.x, global0.a.b.x, -1016f))), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(370f, 1237f, -1755f, global0.a.b.x) - vec4<f32>(767f, global0.a.b.x, -1000f, -577f)))), global0.a.c, _wgslsmith_mult_u32(~arg_0.x, ~(~global0.a.d))), Struct_2(Struct_1(-vec4<i32>(590i, 6391i, -2147483647i, -1i), global0.a.b, !(!vec3<bool>(global0.a.c.x, false, true)), 27173u), -_wgslsmith_sub_i32(global0.a.a.x, 12480i)), select(vec4<bool>(!select(true, arg_1.x, global0.a.c.x), false, -547f >= _wgslsmith_f_op_f32(trunc(915f)), !(global0.a.c.x && arg_1.x)), !select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.a.c.x, arg_1.x, global0.a.c.x, true), arg_1.x), select(select(vec4<bool>(true, global0.a.c.x, false, global0.a.c.x), select(vec4<bool>(arg_1.x, arg_1.x, global0.a.c.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(false, arg_1.x, false, global0.a.c.x)), vec4<bool>(arg_1.x, arg_1.x, false, true)), !(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !(!vec4<bool>(false, true, global0.a.c.x, arg_1.x)))));
    global0 = func_4(Struct_2(global0.a, _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.wx)), global0.a, Struct_2(global0.a, u_input.a.x), select(vec4<bool>(all(select(vec3<bool>(false, true, true), arg_1, vec3<bool>(false, arg_1.x, false))), true, all(vec4<bool>(false, arg_1.x, true, true)), !(true || global0.a.c.x)), !select(!vec4<bool>(false, arg_1.x, global0.a.c.x, global0.a.c.x), !vec4<bool>(arg_1.x, global0.a.c.x, false, false), select(vec4<bool>(true, false, global0.a.c.x, true), vec4<bool>(global0.a.c.x, arg_1.x, global0.a.c.x, global0.a.c.x), global0.a.c.x)), vec4<bool>(false, 1f < _wgslsmith_f_op_f32(-global0.a.b.x), abs(30587u) != (global0.a.d << (4294967295u % 32u)), !(global0.a.b.x >= global0.a.b.x))));
    global0 = func_4(Struct_2(global0.a, u_input.a.x), global0.a, Struct_2(func_4(Struct_2(global0.a, 1i), func_4(Struct_2(global0.a, 2147483647i), func_4(Struct_2(global0.a, -26838i), global0.a, Struct_2(global0.a, -20836i), vec4<bool>(arg_1.x, false, true, false)).a, Struct_2(Struct_1(u_input.a, global0.a.b, arg_1, 28701u), -3588i), !vec4<bool>(arg_1.x, false, global0.a.c.x, arg_1.x)).a, Struct_2(Struct_1(vec4<i32>(u_input.a.x, 31208i, global0.a.a.x, global0.a.a.x), global0.a.b, arg_1, global0.a.d), u_input.a.x), !select(vec4<bool>(global0.a.c.x, false, global0.a.c.x, global0.a.c.x), vec4<bool>(false, global0.a.c.x, false, global0.a.c.x), false)).a, -12943i), !vec4<bool>(arg_1.x, !all(vec2<bool>(arg_1.x, false)), true, global0.a.c.x));
    global0 = Struct_3(Struct_1(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.a.x, -30688i, 47175i, u_input.a.x), global0.a.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, 529f, -2107f, 1279f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.a.b.x, global0.a.b.x, global0.a.b.x, -1544f), global0.a.b)))), !func_4(Struct_2(global0.a, 5897i), func_4(Struct_2(Struct_1(vec4<i32>(-46571i, -1i, global0.a.a.x, 2147483647i), vec4<f32>(1359f, 1140f, global0.a.b.x, 747f), vec3<bool>(arg_1.x, global0.a.c.x, arg_1.x), 1u), u_input.a.x), Struct_1(u_input.a, vec4<f32>(global0.a.b.x, global0.a.b.x, global0.a.b.x, global0.a.b.x), vec3<bool>(true, arg_1.x, false), 0u), Struct_2(global0.a, global0.a.a.x), vec4<bool>(true, true, arg_1.x, true)).a, Struct_2(Struct_1(global0.a.a, vec4<f32>(-2208f, -699f, global0.a.b.x, global0.a.b.x), vec3<bool>(false, true, true), global0.a.d), u_input.a.x), vec4<bool>(arg_1.x, false, true, global0.a.c.x)).a.c, ~4294967295u));
    return arg_1.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17909i;
    var var_1 = !func_1(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(1u, global0.a.d, global0.a.d)), ~(vec3<u32>(4294967295u, global0.a.d, global0.a.d) & vec3<u32>(global0.a.d, global0.a.d, global0.a.d)), select(_wgslsmith_add_vec3_u32(vec3<u32>(global0.a.d, global0.a.d, 34655u), vec3<u32>(4294967295u, 4294967295u, global0.a.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.a.d, 56456u), vec3<u32>(1u, 0u, global0.a.d), vec3<u32>(global0.a.d, 45829u, 4294967295u)), false)), vec3<bool>(global0.a.c.x, any(vec2<bool>(true, global0.a.c.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(62215u, 0u), vec2<u32>(global0.a.d, 20186u)) < _wgslsmith_dot_vec4_u32(vec4<u32>(6679u, 27667u, 0u, global0.a.d), vec4<u32>(global0.a.d, global0.a.d, 64175u, global0.a.d))));
    let var_2 = countOneBits(countOneBits(countOneBits(vec3<u32>(4294967295u, select(7326u, global0.a.d, false), min(global0.a.d, global0.a.d)))));
    let var_3 = max(abs(-2147483647i), u_input.a.x) < u_input.a.x;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.b.x)) * _wgslsmith_f_op_f32(global0.a.b.x * global0.a.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -998f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)))), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(sign(-183f)), global0.a.b.x), func_2(Struct_3(global0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-315f, 332f) + -860f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.a.b.yzx))) * _wgslsmith_f_op_vec3_f32(select(global0.a.b.zwz, _wgslsmith_f_op_vec3_f32(min(global0.a.b.yyw, vec3<f32>(-1065f, -411f, 987f))), func_3(Struct_2(Struct_1(global0.a.a, vec4<f32>(global0.a.b.x, global0.a.b.x, global0.a.b.x, global0.a.b.x), global0.a.c, global0.a.d), global0.a.a.x)))))));
}

