struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(56899i, 25870i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = 1494f;
    global0 = -u_input.a.xy;
    var var_1 = ~u_input.c;
    var var_2 = 416f;
    var var_3 = Struct_1(u_input.a.x);
    return u_input.b.x;
}

fn func_3() -> vec3<bool> {
    global0 = u_input.a.yy;
    global0 = vec2<i32>(13181i, -1i);
    var var_0 = false;
    var var_1 = firstTrailingBit(~global0.x) & -2147483647i;
    let var_2 = Struct_3(_wgslsmith_div_u32(31781u, reverseBits(reverseBits(firstTrailingBit(u_input.c)))));
    return !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_2(!func_3());
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 675f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, -139f, arg_0)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, -566f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(arg_0, -1592f)), -1748f))) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(246f, arg_0))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 - arg_0))))));
    global0 = abs(u_input.a.yy);
    var var_2 = Struct_3(_wgslsmith_sub_u32(~(~u_input.b.x), ~(~(u_input.c << (4294967295u % 32u)))));
    var_2 = Struct_3(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, 83500u, 7343u, 0u)) & countOneBits(abs(vec4<u32>(1u, var_2.a, 4294967295u, var_2.a))), vec4<u32>(~(~4294967295u), ~(83260u | var_2.a), ~var_2.a ^ var_2.a, ~1u)));
    return !(!vec3<bool>(true, var_0.a.x, false));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    global0 = vec2<i32>(reverseBits(0i), u_input.d);
    let var_0 = arg_3;
    let var_1 = _wgslsmith_dot_vec2_u32(~select(u_input.b, ~vec2<u32>(u_input.c, u_input.b.x), vec2<bool>(arg_0.a.x, arg_0.a.x)), ~arg_2.ww);
    var var_2 = select(0i, _wgslsmith_clamp_i32(-30836i, abs(-1i), u_input.d), any(vec3<bool>(arg_0.a.x, true, _wgslsmith_mod_i32(global0.x, 33414i) > _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -23914i, u_input.a.x, arg_3.a), vec4<i32>(var_0.a, arg_3.a, u_input.d, 5113i)))));
    var var_3 = Struct_2(!(!func_3()));
    return Struct_3(arg_2.x);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global0 = max(select(vec2<i32>(_wgslsmith_mod_i32(u_input.d, 1114i), u_input.d), u_input.a.yz, select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, false))) | firstTrailingBit(vec2<i32>(1i, _wgslsmith_div_i32(u_input.d, 1i))), vec2<i32>(46667i, _wgslsmith_mult_i32(u_input.d, min(-2147483647i, -global0.x))));
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -2001f))))));
    global0 = max(-_wgslsmith_add_vec2_i32(u_input.a.yx, u_input.a.yy), vec2<i32>(abs(firstLeadingBit(0i)), _wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(u_input.d, -1i, u_input.d)), _wgslsmith_mod_vec3_i32(-u_input.a, max(vec3<i32>(9313i, -34597i, global0.x), vec3<i32>(global0.x, global0.x, -2147483647i))))));
    var var_1 = ~(~(vec4<u32>(firstTrailingBit(arg_0.a), _wgslsmith_add_u32(arg_0.a, 1u), arg_0.a, ~u_input.c) >> (select(min(vec4<u32>(0u, arg_0.a, 0u, 1u), vec4<u32>(u_input.c, arg_0.a, 18332u, 4294967295u)), vec4<u32>(86023u, u_input.b.x, 51236u, 1u), var_0.a.x) % vec4<u32>(32u))));
    let var_2 = vec4<u32>(~(var_1.x & func_1(Struct_1(global0.x), Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, true)))), ~func_1(Struct_1(1i), Struct_2(var_0.a)), u_input.b.x, 4294967295u);
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(Struct_1(-1i), Struct_2(vec3<bool>(false, true, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_2 = func_5(func_4(Struct_2(vec3<bool>(false, true, true)), any(func_2(-1886f)), _wgslsmith_div_vec4_u32(vec4<u32>(~0u, u_input.b.x >> (u_input.c % 32u), 382u | u_input.c, _wgslsmith_sub_u32(96654u, u_input.b.x)), ~firstTrailingBit(vec4<u32>(u_input.c, 23154u, 1u, u_input.b.x))), Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.xy ^ vec2<i32>(-51305i, global0.x), countOneBits(u_input.a.xx)))));
    var_0 = ~33505u;
    var var_3 = func_4(Struct_2(var_2.a), true, countOneBits(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 24697u, 31590u), vec4<u32>(4294967295u, u_input.c, 9955u, 4294967295u), vec4<u32>(859u, 1u, 6674u, 18167u)), ~vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.c) >> (firstLeadingBit(vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c)) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, false, false, false), vec4<bool>(false, var_2.a.x, var_2.a.x, var_2.a.x)), true))), Struct_1(-abs(_wgslsmith_clamp_i32(global0.x, 2147483647i, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x));
}

