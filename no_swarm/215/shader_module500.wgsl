struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1267i;

var<private> global1: Struct_3 = Struct_3(-1i, 6778u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = Struct_3(firstLeadingBit(-_wgslsmith_mult_i32(global1.a, 0i)), ~(~0u));
    let var_2 = false;
    let var_3 = Struct_4(Struct_3(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, global1.b >> (arg_0.b.x % 32u)), ~(10072u ^ var_1.b))), var_0.a, Struct_2(~reverseBits(arg_1) << (select(arg_0.b.xy, abs(vec2<u32>(var_0.b.x, 48662u)), var_2) % vec2<u32>(32u)), !select(!vec4<bool>(true, false, false, var_2), vec4<bool>(var_2, true, true, false), !vec4<bool>(var_2, var_2, true, false)), var_0.b.xx), firstLeadingBit(~var_0.b), Struct_1(abs(-2147483647i), var_0.b));
    let var_4 = var_3.a;
    return arg_1;
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, firstTrailingBit(u_input.a)) & -1i, _wgslsmith_mod_i32(u_input.a.x, i32(-1i) * -global1.a)), ~global1.b);
    var var_0 = Struct_4(Struct_3(u_input.b.x, 1u), -(u_input.a.x | u_input.a.x), Struct_2(~func_3(Struct_1(1i, vec3<u32>(global1.b, 62399u, 4294967295u)), u_input.a.xw, vec2<f32>(816f, -840f)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), select(vec2<u32>(global1.b, 1u), vec2<u32>(global1.b, global1.b), false) | vec2<u32>(~32492u, abs(global1.b))), vec3<u32>(max(countOneBits(global1.b), _wgslsmith_clamp_u32(~58974u, ~global1.b, ~global1.b)), global1.b << (global1.b % 32u), global1.b), Struct_1(-41955i, max(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 4294967295u, 17445u), vec3<u32>(1u, 1u, global1.b)), vec3<u32>(global1.b, 2994u, select(global1.b, 15451u, false)))));
    global0 = -1i;
    global0 = var_0.e.a;
    var var_1 = var_0.c.b.wwz;
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1310f + 252f) - _wgslsmith_f_op_f32(-878f * -1000f)), -309f)), _wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(984f, 103f, false)) - _wgslsmith_div_f32(931f, 1266f)) * 132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -725f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(533f))))));
    let var_2 = var_1.xy;
    global1 = var_0;
    var var_3 = _wgslsmith_f_op_f32(393f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1.x)))));
    return Struct_1((_wgslsmith_add_i32(_wgslsmith_clamp_i32(-32198i, var_0.a, -2147483647i), 2147483647i | arg_0.x) >> ((~var_0.b >> (var_0.b % 32u)) % 32u)) ^ (var_0.a ^ global1.a), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, 4294967295u, var_0.b), vec3<u32>(global1.b, var_0.b, 1u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(35744u, var_0.b, global1.b) ^ vec3<u32>(17662u, 1u, 102744u), _wgslsmith_clamp_vec3_u32(vec3<u32>(12691u, var_0.b, 4294967295u), vec3<u32>(var_0.b, 0u, var_0.b), vec3<u32>(global1.b, global1.b, 1u)), select(vec3<u32>(var_0.b, global1.b, var_0.b), vec3<u32>(var_0.b, var_0.b, var_0.b), false))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_4(Struct_3(_wgslsmith_mult_i32(reverseBits(min(arg_1.a, u_input.a.x)), select(-2147483647i, ~2147483647i, true)), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b.x, 0u), _wgslsmith_mod_vec2_u32(arg_1.b.yy, arg_1.b.yy)), 17683u)), u_input.a.x >> (0u % 32u), Struct_2(u_input.a.xx, vec4<bool>(true, true, true, true), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.b.yy, arg_1.b.yx) ^ _wgslsmith_sub_vec2_u32(arg_1.b.xy, arg_1.b.yz), vec2<u32>(global1.b, 5731u))), ~arg_1.b, Struct_1(-1i, arg_1.b));
    global1 = var_0.a;
    global0 = ~_wgslsmith_dot_vec4_i32(firstTrailingBit(min(-vec4<i32>(2147483647i, 28490i, 9954i, -478i), ~vec4<i32>(2147483647i, 2147483647i, arg_0, 24364i))), u_input.a << (~max(vec4<u32>(global1.b, 1u, global1.b, global1.b), vec4<u32>(7248u, 0u, arg_1.b.x, 4294967295u)) % vec4<u32>(32u)));
    let var_1 = u_input.b;
    global1 = Struct_3(global1.a, abs(var_0.e.b.x & select(_wgslsmith_mod_u32(arg_1.b.x, global1.b), 26851u, false)));
    return _wgslsmith_clamp_vec3_u32(~min((arg_1.b >> (vec3<u32>(1u, 1u, 5767u) % vec3<u32>(32u))) >> (max(arg_1.b, vec3<u32>(34969u, global1.b, 16821u)) % vec3<u32>(32u)), vec3<u32>(arg_1.b.x << (global1.b % 32u), arg_1.b.x, ~global1.b)), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(1u, ~max(arg_1.b.x, global1.b), _wgslsmith_div_u32(~var_0.a.b, min(10771u, 1u))), reverseBits(max(global1.b, 12744u))), max(arg_1.b, arg_1.b & _wgslsmith_clamp_vec3_u32(vec3<u32>(15784u, global1.b, global1.b), var_0.d | vec3<u32>(20459u, var_0.d.x, 80721u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 40977u, var_0.c.c.x), vec3<u32>(var_0.e.b.x, 0u, 654u)))));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global1 = func_2();
    global0 = 29761i;
    var var_0 = func_1(u_input.b.zx);
    var var_1 = func_2();
    var var_2 = !select(vec2<bool>(-6739i >= var_1.a, any(vec2<bool>(false, false))), select(vec2<bool>(all(vec4<bool>(false, false, true, true)), all(vec3<bool>(false, true, true))), vec2<bool>(false, any(vec3<bool>(true, true, false))), true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(Struct_1(-select(_wgslsmith_clamp_i32(2147483647i, global1.a, 31273i), -global1.a, all(vec4<bool>(true, true, false, true))), max(select(vec3<u32>(global1.b, 89639u, global1.b), vec3<u32>(global1.b, 6111u, global1.b), true), _wgslsmith_add_vec3_u32(vec3<u32>(23876u, 61121u, 0u), vec3<u32>(25225u, 34601u, global1.b))) ^ func_4(-2147483647i, func_1(vec2<i32>(-25130i, 2147483647i)))));
    var var_0 = Struct_2(vec2<i32>(u_input.a.x, abs(func_1(vec2<i32>(-34333i, -1i)).a)), select(vec4<bool>(false, _wgslsmith_f_op_f32(round(-284f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1227f), !(global1.b > 28909u), false), !vec4<bool>(-17032i < u_input.b.x, true, false, any(vec2<bool>(false, true))), select(all(vec4<bool>(true, true, true, true)), true, !all(vec3<bool>(true, false, false)))), abs(~(abs(vec2<u32>(4294967295u, global1.b)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.b), vec2<u32>(global1.b, global1.b)))));
    let var_1 = Struct_4(func_2(), (((2147483647i >> (global1.b % 32u)) << (var_0.c.x % 32u)) >> (~4294967295u % 32u)) << (firstTrailingBit(0u) % 32u), Struct_2(-vec2<i32>(-44980i, -1i), var_0.b, ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 7909u, 1u), vec3<u32>(global1.b, 1u, 50858u)), _wgslsmith_mult_u32(51145u, 58076u))), func_1(~(~vec2<i32>(-17181i, -1i) << ((var_0.c << (var_0.c % vec2<u32>(32u))) % vec2<u32>(32u)))).b, func_1(-_wgslsmith_mult_vec2_i32(reverseBits(u_input.b.zy), abs(var_0.a))));
    let var_2 = any(!var_1.c.b);
    var var_3 = 1212f;
    var var_4 = true;
    let var_5 = select(var_0.b.zxw, select(!vec3<bool>(any(vec3<bool>(false, var_1.c.b.x, var_0.b.x)), var_2 & var_2, var_0.b.x), var_0.b.wzx, !vec3<bool>(all(var_1.c.b.zxz), var_2, !var_1.c.b.x)), ~(~(~(-57870i))) <= global1.a);
    let var_6 = Struct_2(~(vec2<i32>(1i, global1.a) | vec2<i32>(-var_0.a.x, var_0.a.x)), select(!var_0.b, vec4<bool>(any(select(vec2<bool>(false, var_2), var_1.c.b.xz, var_2)), select(true, true, var_2), !(global1.b < global1.b), !(var_0.c.x > 1u)), vec4<bool>(true, var_5.x, false == select(false, var_0.b.x, var_0.b.x), true)), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-2147483647i, i32(-1i) * -40728i), -u_input.b.x, global1.a, 2655u);
}

