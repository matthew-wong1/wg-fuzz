struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1222f, -692f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-187f * -296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1076f))), global0.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(606f, var_0, -1421f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, _wgslsmith_f_op_f32(-464f * _wgslsmith_f_op_f32(-910f * var_0)), var_0)), vec3<bool>(true, false, true)));
    global0 = vec4<bool>(!any(vec3<bool>(true, global0.x, u_input.b < u_input.b)), !any(global0.wz), all(!select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(false, true, global0.x), global0.wxy)), select(true, all(vec3<bool>(true, global0.x && global0.x, all(vec4<bool>(global0.x, false, false, global0.x)))), false || select(any(global0.xz), false, global0.x)));
    var var_2 = Struct_1(!select(global0.zy, select(global0.yw, vec2<bool>(false, false), !global0.x), vec2<bool>(true, u_input.b <= 0u)));
    var_2 = Struct_1(global0.yy);
    return !(!all(!(!vec4<bool>(global0.x, var_2.a.x, var_2.a.x, var_2.a.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    global0 = select(vec4<bool>(_wgslsmith_div_i32(u_input.d.x, -15113i) != ~(~arg_0.x), arg_1.a.x, any(!vec2<bool>(global0.x, global0.x)), true), vec4<bool>(true, all(select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), vec4<bool>(false, true, arg_1.a.x, false), vec4<bool>(false, arg_1.a.x, false, false)), !vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), select(global0.x, global0.x, arg_1.a.x))), func_3(), arg_1.a.x), global0.x);
    let var_0 = Struct_1(vec2<bool>(arg_1.a.x, global0.x));
    let var_1 = abs(1i);
    var var_2 = arg_1;
    var var_3 = var_0;
    return any(select(select(!(!vec3<bool>(false, global0.x, true)), !global0.xwx, select(vec3<bool>(false, arg_1.a.x, global0.x), vec3<bool>(true, true, true), var_0.a.x)), vec3<bool>(false, any(vec4<bool>(global0.x, arg_1.a.x, false, false)), true), select(global0.yyz, global0.wyx, !(!var_2.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = select(vec4<bool>(arg_0.a.x, true, true, all(select(select(global0.xy, vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a), vec2<bool>(arg_0.a.x, true), vec2<bool>(true, true)))), !vec4<bool>(true, !(u_input.c.x <= 1u), true, true), !vec4<bool>(true, false, func_2(reverseBits(u_input.d.wzz), arg_0), _wgslsmith_mult_u32(7744u, u_input.c.x) == u_input.b));
    global0 = select(vec4<bool>(true, true, true, true), !select(!vec4<bool>(arg_0.a.x, false, global0.x, global0.x), vec4<bool>(global0.x, arg_1, arg_1, !arg_0.a.x), vec4<bool>(false, arg_1, global0.x, any(vec2<bool>(arg_1, true)))), !vec4<bool>(true && all(vec4<bool>(arg_1, false, false, false)), !all(vec2<bool>(true, arg_0.a.x)), global0.x, any(!vec4<bool>(arg_1, global0.x, true, false))));
    global0 = select(vec4<bool>(any(!select(vec3<bool>(true, arg_0.a.x, false), global0.wzw, vec3<bool>(true, false, false))), all(global0.wxw), !func_2(u_input.a.yxz, Struct_1(global0.yy)), !arg_0.a.x), select(!select(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), select(vec4<bool>(arg_1, true, arg_0.a.x, true), vec4<bool>(false, arg_1, global0.x, arg_0.a.x), vec4<bool>(global0.x, arg_1, false, global0.x)), select(vec4<bool>(arg_0.a.x, global0.x, false, arg_0.a.x), vec4<bool>(arg_1, true, true, global0.x), vec4<bool>(true, global0.x, arg_1, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_2(u_input.d.yzz, Struct_1(global0.yx)), false)), vec4<bool>(all(select(vec2<bool>(global0.x, false), arg_0.a, !arg_0.a)), arg_1, any(select(!global0.zzx, vec3<bool>(global0.x, true, true), !global0.ywy)), all(vec3<bool>(true, true, true))));
    global0 = !select(select(!select(vec4<bool>(arg_1, true, arg_0.a.x, true), vec4<bool>(true, false, true, arg_0.a.x), vec4<bool>(global0.x, arg_1, global0.x, true)), select(!vec4<bool>(true, false, global0.x, true), !vec4<bool>(global0.x, false, false, global0.x), select(vec4<bool>(true, false, true, global0.x), vec4<bool>(arg_1, global0.x, true, false), vec4<bool>(global0.x, true, arg_1, true))), !(!vec4<bool>(false, false, arg_0.a.x, false))), vec4<bool>(global0.x, select(global0.x, all(global0.wxy), arg_0.a.x && false), false, false), any(vec2<bool>(arg_0.a.x, select(true, arg_1, false))));
    let var_0 = select(u_input.d.xyz, vec3<i32>(u_input.d.x, _wgslsmith_div_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.d.xy)) >> (~(u_input.c.x | u_input.c.x) % 32u), i32(-1i) * -_wgslsmith_clamp_i32(u_input.a.x, u_input.d.x, u_input.a.x)), true);
    return Struct_1(vec2<bool>(arg_1, arg_0.a.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_1(Struct_1(select(vec2<bool>(false, global0.x), vec2<bool>(all(vec4<bool>(arg_1.a.x, false, false, global0.x)), true), select(arg_1.a, arg_1.a, vec2<bool>(true, global0.x)))), arg_1.a.x);
    var_0 = func_1(arg_1, var_0.a.x);
    let var_1 = Struct_1(vec2<bool>(u_input.b != countOneBits(1u), any(vec2<bool>(true, u_input.d.x < u_input.a.x))));
    var var_2 = arg_1;
    let var_3 = firstLeadingBit(arg_0.x);
    return var_1;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = 1i;
    global0 = !vec4<bool>(!global0.x, func_3(), arg_2.a.x, false);
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(32262u, 4294967295u, 15394u), min(vec3<u32>(40786u, arg_0, 2492u), vec3<u32>(u_input.c.x, 4294967295u, 1u))), u_input.c.x, ~(~arg_0), ~1u), _wgslsmith_add_vec4_u32(min(select(vec4<u32>(42738u, 21339u, 130416u, u_input.b), vec4<u32>(1u, 102349u, u_input.b, u_input.b), true), countOneBits(vec4<u32>(4294967295u, 0u, arg_0, arg_0))), firstLeadingBit(vec4<u32>(arg_0, 7689u, arg_0, u_input.c.x)) >> (vec4<u32>(u_input.b, arg_0, 0u, u_input.c.x) % vec4<u32>(32u)))), vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(abs(u_input.b), ~1u)), arg_0, ~arg_0, _wgslsmith_mod_u32(~(~u_input.c.x), 47207u)));
    var var_2 = arg_2;
    let var_3 = Struct_1(!vec2<bool>(_wgslsmith_mod_u32(arg_0, 46942u) < 12827u, true));
    return Struct_1(!(!(!(!vec2<bool>(global0.x, false)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(-155f));
    var var_1 = ~_wgslsmith_mult_vec4_u32(abs(min(firstTrailingBit(vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.c.x)), select(vec4<u32>(11152u, 33256u, u_input.c.x, u_input.b), vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u), vec4<bool>(false, true, global0.x, global0.x)))), vec4<u32>(1u, reverseBits(max(u_input.b, u_input.c.x)), ~u_input.b, max(~0u, 4294967295u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-273f)) - _wgslsmith_f_op_f32(min(823f, 2657f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-534f, -603f), vec2<f32>(-2482f, -795f)))))));
    var_1 = vec4<u32>(u_input.c.x, firstTrailingBit(countOneBits(min(27985u, ~1u))), reverseBits(~firstTrailingBit(4294967295u)), countOneBits(var_1.x) | _wgslsmith_mult_u32(max(~var_1.x, 8689u), _wgslsmith_div_u32(var_1.x, abs(var_1.x))));
    var var_3 = var_2.x;
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_6(func_5(u_input.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * 523f)))), func_4(vec4<u32>(u_input.c.x, 1326u, ~u_input.c.x, ~0u), func_1(Struct_1(global0.yx), global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(629f, -1221f) - 527f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-388f, 1136f, false)), _wgslsmith_f_op_f32(sign(-584f))))), Struct_1(global0.zy));
    var var_2 = func_5(u_input.c.x, _wgslsmith_f_op_f32(round(753f)), func_1(Struct_1(!vec2<bool>(false, var_1)), true), -787f);
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(1i, -u_input.d.x, min(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.a.x, 2147483647i)) ^ -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, 4516i, 38241i), vec4<i32>(-2147483647i, u_input.d.x, u_input.a.x, u_input.d.x))) & vec4<i32>(u_input.a.x, -12886i, _wgslsmith_mod_i32(u_input.d.x, u_input.a.x), ~abs(0i)));
}

