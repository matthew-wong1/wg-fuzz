struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(208f, 1000f, 462f, 664f), 1i, -570f, 129226u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_3 {
    global0 = arg_1;
    var var_0 = countOneBits(min(max(~_wgslsmith_mult_vec3_i32(vec3<i32>(19579i, 0i, 61438i), vec3<i32>(global0.b, arg_1.b, 1i)), -select(vec3<i32>(-2147483647i, 2147483647i, arg_3.b), vec3<i32>(-1i, global0.b, 2147483647i), arg_0.a.wzy)), vec3<i32>(arg_3.b, _wgslsmith_add_i32(1i, -2147483647i >> (arg_3.d % 32u)), 28759i)));
    let var_1 = _wgslsmith_f_op_f32(trunc(-181f));
    var var_2 = 4294967295u;
    let var_3 = Struct_3(true, arg_3.a.yww, vec4<bool>(arg_0.c, !(var_0.x >= abs(global0.b)), arg_0.c, ~global0.d <= u_input.a), Struct_1(!select(vec4<bool>(false, arg_0.e.x, false, arg_0.d.x), arg_0.a, !arg_0.a), all(!(!arg_0.a)), true, vec2<bool>(!(1336f >= arg_3.c), true), arg_0.d));
    return var_3;
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = vec2<bool>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, 23979u, global0.d, global0.d), vec4<u32>(4294967295u, global0.d, u_input.a, u_input.a) >> (vec4<u32>(0u, u_input.a, global0.d, 4294967295u) % vec4<u32>(32u))), ~(~4294967295u)) >= _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 37054u, global0.d) >> (vec3<u32>(global0.d, 14022u, u_input.a) % vec3<u32>(32u))), ~(~vec3<u32>(80300u, 0u, 4294967295u))), false);
    let var_1 = !vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, global0.c)), all(!select(vec4<bool>(arg_0.c.x, var_0.x, true, true), vec4<bool>(true, false, true, var_0.x), false)), false, all(!arg_0.d.a));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, global0.a.x, arg_0.b.x, arg_0.b.x)))))), _wgslsmith_mod_i32(_wgslsmith_add_i32(~global0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-9602i, 1i, global0.b, 0i), vec4<i32>(-2147483647i, global0.b, global0.b, global0.b)) ^ -global0.b), -5047i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(-arg_0.b.x))) * global0.a.x), 1u);
    let var_3 = -1000f;
    var var_4 = func_2(arg_0.d, var_2, global0.a.xy, var_2).d;
    return -max(~_wgslsmith_add_i32(var_2.b, -global0.b), global0.b);
}

fn func_1() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(max(global0.c, 921f)), -1749f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c * global0.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.c)), global0.c))))), global0.b, -977f, _wgslsmith_mod_u32(global0.d ^ u_input.a, u_input.a));
    global0 = var_0;
    global0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) * _wgslsmith_f_op_vec4_f32(max(global0.a, global0.a))), vec4<f32>(var_0.a.x, global0.c, _wgslsmith_f_op_f32(max(-620f, var_0.a.x)), _wgslsmith_f_op_f32(global0.a.x * var_0.a.x))), global0.a), countOneBits(_wgslsmith_add_i32(~var_0.b, func_3(func_2(Struct_1(vec4<bool>(true, true, false, true), true, true, vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec4<f32>(global0.a.x, -134f, 877f, -1353f), 1i, -659f, global0.d), var_0.a.zw, var_0)))), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(ceil(-245f))), global0.d);
    var var_1 = select(-vec2<i32>(~var_0.b, 30409i), firstTrailingBit(~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(9664i, -2147483647i), vec2<i32>(7808i, 0i)), vec2<i32>(12669i, 0i) << (vec2<u32>(global0.d, u_input.a) % vec2<u32>(32u)))), true);
    let var_2 = func_2(Struct_1(func_2(Struct_1(vec4<bool>(true, true, true, true), true, true, vec2<bool>(true, true), vec2<bool>(true, true)), var_0, vec2<f32>(global0.c, _wgslsmith_div_f32(global0.c, var_0.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), global0.b, _wgslsmith_div_f32(-1136f, 1467f), reverseBits(u_input.a))).c, true, true || (firstTrailingBit(global0.d) <= _wgslsmith_mod_u32(var_0.d, 4294967295u)), vec2<bool>(func_2(Struct_1(vec4<bool>(false, true, false, true), true, true, vec2<bool>(true, false), vec2<bool>(false, false)), var_0, vec2<f32>(-2050f, global0.a.x), var_0).a & false, ~global0.d > 4294967295u), !(!func_2(Struct_1(vec4<bool>(true, false, false, false), true, true, vec2<bool>(false, false), vec2<bool>(true, false)), var_0, var_0.a.zx, var_0).d.a.wz)), Struct_2(vec4<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 1000f) * _wgslsmith_f_op_f32(floor(1156f))), _wgslsmith_div_f32(-1297f, -943f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -111f)))), i32(-1i) * -var_1.x, _wgslsmith_f_op_f32(-func_2(Struct_1(vec4<bool>(true, false, false, true), true, true, vec2<bool>(true, true), vec2<bool>(false, false)), Struct_2(vec4<f32>(global0.a.x, var_0.c, global0.c, global0.c), -54785i, 884f, global0.d), vec2<f32>(-289f, global0.c), var_0).b.x), global0.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))), _wgslsmith_f_op_f32(max(243f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-111f, var_0.a.x)), -1304f) - var_0.a.wy)), Struct_2(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, global0.c, var_0.c, 1476f)))), max(-9784i, var_0.b | -41525i), _wgslsmith_f_op_f32(abs(var_0.c)), var_0.d)).d;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), false, -455f < global0.c), vec3<bool>((global0.a.x > -580f) & true, select(all(vec3<bool>(true, true, false)), false & all(vec3<bool>(false, true, true)), func_1() | false), false), 1u < _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28206u, 1u, global0.d, global0.d), vec4<u32>(1u, global0.d, 1u, global0.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0.d), vec2<u32>(16519u, 1486u)), ~u_input.a), vec3<u32>(global0.d ^ u_input.a, _wgslsmith_clamp_u32(56150u, 1u, 102228u), _wgslsmith_clamp_u32(52913u, 1u, u_input.a))));
    var var_1 = global0.c;
    var var_2 = !(_wgslsmith_div_u32(global0.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(56410u, global0.d), vec2<u32>(0u, u_input.a)), abs(vec2<u32>(17373u, 28971u)))) != ((global0.d >> (global0.d % 32u)) >> (_wgslsmith_sub_u32(global0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 55957u, 4294967295u, 0u), vec4<u32>(global0.d, global0.d, 10177u, 1u))) % 32u)));
    var_1 = global0.c;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.c)), -1160f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(ceil(-1970f))))))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1813f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a.x)), -661f))), _wgslsmith_add_u32(6220u, global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, ~vec4<i32>(global0.b, -(~global0.b), _wgslsmith_add_i32(1495i, firstLeadingBit(-47549i)), _wgslsmith_mult_i32(global0.b, -2147483647i) | global0.b), ~max(vec4<i32>(~23715i, ~global0.b, ~global0.b, global0.b), _wgslsmith_div_vec4_i32(select(vec4<i32>(global0.b, global0.b, global0.b, global0.b), vec4<i32>(15182i, 9381i, global0.b, global0.b), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec4<i32>(global0.b, global0.b, 1i, 6129i))));
}

