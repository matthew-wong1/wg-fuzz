struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1410f, -680f, 1452f, -409f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.a.x == 1u), true)), !any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), all(vec3<bool>(true, false, true)))), true, false);
    let var_1 = var_0.x || var_0.x;
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 334f)), ~(-u_input.b), 0u, Struct_1(vec2<f32>(-1115f, _wgslsmith_f_op_f32(global0.x * 481f)), global0.yyx, vec4<f32>(_wgslsmith_f_op_f32(1509f - global0.x), global0.x, _wgslsmith_f_op_f32(step(global0.x, 1279f)), 1446f), vec4<bool>(true, true, true, true), any(!vec4<bool>(var_1, true, true, true)))), global0.x, Struct_2(select(!select(vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(var_1, var_0.x, true, var_0.x)), !select(vec4<bool>(var_1, var_0.x, false, false), vec4<bool>(true, var_0.x, true, true), true), vec4<bool>(var_0.x | false, var_1, !var_0.x, all(vec4<bool>(true, true, true, false)))), 1i, global0.x));
    let var_3 = true;
    var_0 = select(var_2.c.a, !(!var_2.c.a), !select(select(!var_2.a.d.d, select(vec4<bool>(false, var_1, false, false), vec4<bool>(false, false, var_3, var_0.x), var_2.c.a), select(var_2.a.d.d, var_2.a.d.d, var_3)), vec4<bool>(false, var_1 & var_3, true, true), select(!vec4<bool>(var_1, true, false, false), var_2.c.a, select(var_2.a.d.d, vec4<bool>(var_1, var_0.x, var_3, false), var_3))));
    return 1000f;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(f32(-1f) * -498f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1705f);
    var var_1 = !select(vec3<bool>(true, true, _wgslsmith_sub_u32(0u, arg_2) < u_input.a.x), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)), true), !(arg_1.x < arg_1.x)));
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(-u_input.b & u_input.b), u_input.b, -1i), vec3<i32>(_wgslsmith_add_i32(u_input.b | u_input.b, -12960i) ^ ~reverseBits(u_input.c.x), _wgslsmith_div_i32(select(u_input.b ^ 21207i, _wgslsmith_sub_i32(92725i, 0i), arg_3 < 782f), 1i), _wgslsmith_add_i32(-1422i, min(_wgslsmith_add_i32(u_input.b, u_input.b), -u_input.b))), vec3<i32>(u_input.c.x, 914i, -1i) ^ reverseBits(countOneBits(vec3<i32>(u_input.b, -2147483647i, u_input.b)) << (~vec3<u32>(1u, arg_2, 4294967295u) % vec3<u32>(32u))));
    let var_3 = vec4<bool>(any(!select(var_1.xz, select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(true, true)), !var_1.x)), true, true, select(!any(vec3<bool>(var_1.x, var_1.x, var_1.x)), max(u_input.b, ~1i) > var_2.x, !(var_1.x != all(vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    return var_2 << (vec3<u32>(arg_2 | u_input.a.x, 0u, arg_2) % vec3<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_5(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x))), arg_1.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), -(~u_input.b >> (select(u_input.a.x, 116563u, false) % 32u)), 1u, Struct_1(arg_1.yx, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1712f, arg_0, -247f), global0.xzy)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-227f, arg_1.x, -1037f, 591f) + vec4<f32>(1000f, 274f, arg_0, 1118f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-321f, global0.x, 1364f, arg_0) + vec4<f32>(arg_1.x, arg_1.x, 2253f, global0.x))), vec4<bool>(true, true, true, true), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(2147483647i, 10624i)), -1i), arg_2.x, _wgslsmith_mult_i32(firstLeadingBit(u_input.b), 0i >> (_wgslsmith_div_u32(u_input.a.x, 35510u) % 32u)), 0i), select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 42820i, -2147483647i, 2147483647i) >> (vec4<u32>(u_input.a.x, u_input.a.x, 34239u, 8151u) % vec4<u32>(32u)), vec4<i32>(21422i, u_input.c.x, -1i, 1i) << (vec4<u32>(u_input.a.x, u_input.a.x, 35327u, 11237u) % vec4<u32>(32u))), reverseBits(~reverseBits(vec4<i32>(-18562i, 1i, arg_2.x, -1i))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), Struct_2(vec4<bool>(true, true, true, true), select(~_wgslsmith_mult_i32(14609i, u_input.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_2.x, u_input.c.x, -3644i), vec4<i32>(arg_2.x, u_input.c.x, -2147483647i, 0i)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f + global0.x) - _wgslsmith_f_op_f32(step(-1000f, -1000f))))), ~select(firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) >> ((vec3<u32>(u_input.a.x, 41834u, u_input.a.x) >> (vec3<u32>(1u, 1u, 55492u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 4294967295u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(103409u, u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a.a)) * _wgslsmith_f_op_vec4_f32(-var_0.a.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a)), false & any(var_0.a.d.d.yy))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(296f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(317f + 257f), var_0.a.d.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))))));
    let var_1 = var_0.a.d;
    let var_2 = -abs(arg_2.x) ^ -(i32(-1i) * -18372i);
    return var_0.a.d.c;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.x))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -597f);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(var_0, vec3<f32>(-323f, _wgslsmith_f_op_f32(step(var_1, -1198f)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_mod_vec3_i32(func_2(148f, global0.xww, u_input.a.x, 177f), vec3<i32>(2147483647i, u_input.c.x, u_input.b)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_3()), 276f, -103f, 1000f)))));
    let var_2 = _wgslsmith_sub_i32(min(~u_input.c.x, u_input.b), 1i);
    global0 = vec4<f32>(_wgslsmith_div_f32(-133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0, 136f))))), global0.x, 522f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 + var_1))) + _wgslsmith_f_op_f32(trunc(var_1))))));
    return !(~3678u < _wgslsmith_add_u32(_wgslsmith_div_u32(~8625u, min(u_input.a.x, u_input.a.x)), _wgslsmith_mod_u32(1u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2131f), _wgslsmith_f_op_f32(322f * global0.x), global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x)))));
    let var_0 = vec4<bool>(!(!(any(vec2<bool>(false, false)) != func_1())), true, true, 28083u <= u_input.a.x);
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-440f * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) - _wgslsmith_f_op_f32(global0.x + global0.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), 165f))))), 2237f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.wxy))));
}

