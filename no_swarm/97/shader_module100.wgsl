struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-2911f, -1000f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = 19808i;
    let var_1 = ~abs(select(arg_1, vec3<u32>(_wgslsmith_sub_u32(arg_1.x, 86964u), 59642u, _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(arg_0, u_input.b))), !all(vec3<bool>(true, false, false))));
    var var_2 = vec4<f32>(1181f, 114f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(578f, _wgslsmith_f_op_f32(-859f - global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(893f, global0.x))))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.xz, vec2<f32>(-1464f, -583f))))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-arg_2.yxy), arg_1);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(firstLeadingBit(4294967295u), vec3<u32>(0u, 0u, ~reverseBits(16852u)))) - vec2<f32>(-724f, _wgslsmith_f_op_f32(-522f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2106f * var_0.b.x)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-663f, 454f, -137f))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    let var_0 = arg_0;
    var var_1 = !vec2<bool>(true, var_0.c.x && !var_0.c.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 19895u, 88395u, u_input.b)), vec4<u32>(u_input.b, 102760u, u_input.c, 79964u)), vec2<bool>(!var_1.x, !arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x)), -1105f, 680f), arg_0.b.zx)).zx, _wgslsmith_f_op_vec2_f32(-arg_0.b.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != _wgslsmith_f_op_f32(floor(global0.x)))));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~u_input.a, -2147483647i, _wgslsmith_clamp_i32(0i, -10982i, arg_1)), u_input.d.x), -reverseBits(_wgslsmith_clamp_i32(16451i, u_input.d.x, -16876i))), -26582i);
    let var_3 = ~8284u | _wgslsmith_sub_u32(_wgslsmith_mult_u32(25058u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c, 62091u, 1u), vec3<u32>(34508u, 1u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 66876u, u_input.b), vec3<u32>(u_input.c, 49469u, 1u), vec3<u32>(u_input.c, u_input.b, 4294967295u)))), ~(4294967295u << (min(u_input.c, 4294967295u) % 32u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.x, 625f))))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 302f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1270f, global0.x) - vec2<f32>(global0.x, global0.x)) * vec2<f32>(global0.x, 662f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(global0.x + global0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(!(global0.x < 1250f), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(0u, 106167u, u_input.b, u_input.c) ^ vec4<u32>(u_input.c, 1u, 41976u, 1u), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, -312f, 1000f, global0.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 762f))))), vec2<bool>(any(vec4<bool>(false, false, false, true)), true)), -3141i)));
    let var_0 = Struct_1(firstLeadingBit(-(~(-23761i))) > countOneBits(~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(300f, global0.x, global0.x))))))), vec2<bool>(any(vec2<bool>(true, all(vec2<bool>(true, true)))), !any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-var_0.b), vec2<bool>(true, var_0.c.x));
    var var_2 = var_0;
    return Struct_1(true & var_1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(max(-1568f, -1235f)), _wgslsmith_div_f32(global0.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1551f, global0.x, -939f), var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b - var_2.b))), countOneBits(~u_input.d.x) > _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.d.xz >> (vec2<u32>(36094u, 0u) % vec2<u32>(32u))))), vec2<bool>(var_1.c.x, any(select(vec2<bool>(var_2.c.x, false), var_0.c, var_0.c.x))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(arg_1.b.yz + arg_1.b.zy);
    var var_0 = Struct_1(~u_input.d.x <= -1i, vec3<f32>(-1133f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(!arg_1.c.x, arg_1.b, !vec2<bool>(true, arg_1.c.x)), 0i)).x, func_2().b.x), func_2().c);
    let var_1 = arg_1;
    var_0 = func_2();
    var var_2 = func_2();
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) + global0.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-577f, global0.x)))) == global0.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -661f, 749f))))), vec2<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), false));
    global0 = var_0.b.zz;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), -769f)), 615f);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1(u_input.b, ~vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_mult_u32(u_input.c, 4294967295u)), ~u_input.b)));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_mult_u32(select(u_input.c | 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 75386u, u_input.c), vec3<u32>(u_input.b, 28121u, 4294967295u)), !var_0.c.x) & ~1u, max(4294967295u, _wgslsmith_sub_u32(max(u_input.b, u_input.c), 1u))), vec3<u32>(firstLeadingBit(u_input.c), u_input.c, ~(countOneBits(u_input.c) ^ u_input.b)))).x;
    let var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.d.x, _wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.d.x)), u_input.d), u_input.d) << (vec3<u32>(45892u, _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, countOneBits(u_input.b), ~22489u), func_5(vec3<u32>(4294967295u, 52980u, u_input.b), func_2())), ~(func_5(vec3<u32>(31530u, u_input.b, 1075u), Struct_1(var_0.c.x, vec3<f32>(var_2, var_0.b.x, var_0.b.x), vec2<bool>(var_0.c.x, true))).x >> (u_input.c % 32u))) % vec3<u32>(32u));
    let var_4 = vec3<bool>(!(!(!(var_1.x >= 1384f))), var_0.c.x, var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~u_input.c), ~countOneBits(countOneBits(max(vec4<u32>(81204u, u_input.b, 27346u, u_input.c), vec4<u32>(15170u, u_input.c, u_input.b, u_input.c)))), vec3<f32>(758f, 263f, _wgslsmith_f_op_f32(-var_2)), ~(72605u | (_wgslsmith_div_u32(107790u, u_input.b) | ~u_input.b)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(abs(vec4<u32>(4294967295u, 0u, 1332u, u_input.b)), vec2<bool>(var_0.c.x, var_4.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(935f, global0.x, -971f, var_1.x) * vec4<f32>(global0.x, var_0.b.x, var_2, var_2)), vec2<f32>(var_1.x, 1671f))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(-var_2))), -1000f));
}

