struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(43301i, -33677i), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, -35950i), vec2<i32>(1i, 21516i), vec2<i32>(-57304i, -41134i), vec2<i32>(1i, -1i), vec2<i32>(-1i, 19001i), vec2<i32>(-1i, 22721i), vec2<i32>(i32(-2147483648), -48856i), vec2<i32>(-9626i, -39247i), vec2<i32>(89745i, i32(-2147483648)), vec2<i32>(-6074i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(15032i, 2147483647i), vec2<i32>(36474i, -34916i), vec2<i32>(2147483647i, -27890i), vec2<i32>(-5511i, 12857i), vec2<i32>(2147483647i, -42464i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -34916i), vec2<i32>(2147483647i, 0i), vec2<i32>(-72773i, i32(-2147483648)), vec2<i32>(-13516i, 0i), vec2<i32>(0i, -8864i), vec2<i32>(11365i, 1i), vec2<i32>(-3655i, 33822i), vec2<i32>(42852i, 1i), vec2<i32>(-1i, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = -86089i >> (u_input.b % 32u);
    var var_1 = global0.b.c.x;
    global1 = array<vec2<i32>, 29>();
    var var_2 = vec2<bool>(true, true);
    global0 = Struct_2(_wgslsmith_add_u32(38470u, ~(~reverseBits(u_input.b))), global0.d, global0.c, Struct_1(abs(vec3<u32>(u_input.b, u_input.b, 1u)), _wgslsmith_f_op_f32(-984f - -515f), global0.d.d, global0.b.c), abs(~global0.b.a));
    return ~reverseBits(vec4<u32>(1u, (u_input.b & 48792u) ^ reverseBits(u_input.b), reverseBits(global0.a), _wgslsmith_sub_u32(global0.a, u_input.b)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2.b == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b.b))) + global0.d.b);
    let var_1 = global0.b;
    var_0 = false;
    let var_2 = abs(max(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, -356f, arg_2.b))) | vec4<u32>(var_1.a.x, _wgslsmith_add_u32(27620u, 83633u), u_input.b << (global0.d.a.x % 32u), arg_2.a.x), ~(~vec4<u32>(43144u, u_input.b, 101021u, 4294967295u)) ^ (~vec4<u32>(global0.d.a.x, 38665u, arg_2.a.x, 4294967295u) | ~vec4<u32>(133126u, 11928u, global0.e.x, 40848u))));
    let var_3 = var_1.c.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1017f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b - 192f))) - _wgslsmith_f_op_f32(round(var_1.b))))), -1978f));
}

fn func_4(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = true;
    global1 = array<vec2<i32>, 29>();
    var_0 = true;
    let var_1 = Struct_2(~abs(68461u), global0.d, !global0.c, Struct_1(global0.d.a, arg_0.x, firstLeadingBit(vec4<i32>(2147483647i, 2147483647i, -global0.d.c.x, abs(73271i))), global0.b.d), ~min(global0.e, ~vec3<u32>(57744u, 1u, global0.b.a.x)));
    var var_2 = Struct_4(var_1.b, var_1.c);
    return vec2<u32>(reverseBits(34490u), countOneBits(reverseBits(~global0.d.a.x) | 18578u));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = u_input.a.x;
    global1 = array<vec2<i32>, 29>();
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, vec3<bool>(global0.c, false, arg_1), Struct_1(vec3<u32>(4294967295u, u_input.b, global0.b.a.x), arg_0.x, vec4<i32>(1i, 0i, u_input.a.x, -32241i), global0.b.d))) - _wgslsmith_div_f32(arg_0.x, 1652f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_div_f32(-1000f, global0.b.b), global0.c))), -1657f, -963f));
    global1 = array<vec2<i32>, 29>();
    global1 = array<vec2<i32>, 29>();
    return Struct_2((~(~var_1.x) >> (u_input.b % 32u)) & _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(global0.d.a.xy, global0.b.a.xy, vec2<bool>(true, global0.c)), max(vec2<u32>(4294967295u, global0.e.x), vec2<u32>(global0.e.x, 0u))), _wgslsmith_mod_u32(4294967295u & u_input.b, min(global0.d.a.x, var_1.x))), global0.b, 27654u > (~u_input.b & ~u_input.b), global0.b, global0.d.a);
}

fn func_5(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_4(Struct_1(~(~vec3<u32>(global0.b.a.x, arg_0.d.a.x, arg_0.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(-global0.b.b))), vec4<i32>(-3944i, global0.b.d.x, 24918i, 49341i), -select(global0.d.c, global0.d.d, vec4<bool>(arg_0.c, true, arg_0.c, true)) ^ (vec4<i32>(12865i, arg_0.b.d.x, 0i, -2147483647i) | vec4<i32>(arg_0.d.d.x, u_input.a.x, 1151i, u_input.a.x))), false);
    var var_1 = 35962u;
    var var_2 = var_0.a.c;
    var var_3 = arg_0.c | (!(_wgslsmith_clamp_i32(-2147483647i, -11412i, var_0.a.d.x) >= abs(6528i)) & global0.c);
    global1 = array<vec2<i32>, 29>();
    return var_0.a.a.x & 37735u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d;
    global1 = array<vec2<i32>, 29>();
    var var_1 = Struct_2(36780u, Struct_1(vec3<u32>(~u_input.b, global0.e.x, 4294967295u), _wgslsmith_div_f32(397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -762f)), (var_0.d | vec4<i32>(0i, var_0.c.x, u_input.a.x, -15158i)) | global0.d.c, ~vec4<i32>(~20025i, 1i, _wgslsmith_mod_i32(u_input.a.x, -7800i), u_input.a.x & global0.b.c.x)), !(func_5(func_1(vec4<f32>(var_0.b, var_0.b, 1000f, global0.d.b), true)) <= min(u_input.b ^ u_input.b, _wgslsmith_dot_vec3_u32(global0.d.a, vec3<u32>(1u, 15427u, u_input.b)))), func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global0.b.b, global0.d.b, var_0.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1248f, var_0.b, var_0.b) * vec4<f32>(875f, var_0.b, var_0.b, -893f))), vec4<f32>(_wgslsmith_f_op_f32(floor(global0.b.b)), -393f, _wgslsmith_f_op_f32(-var_0.b), 1583f), vec4<bool>(global0.c, global0.c, global0.c, true))), true).b, ~vec3<u32>(1u, ~var_0.a.x, u_input.b) >> (vec3<u32>(1u, ~max(0u, 106275u), _wgslsmith_sub_u32(u_input.b, 4294967295u) >> (u_input.b % 32u)) % vec3<u32>(32u)));
    let var_2 = var_0.a.x;
    var var_3 = global0.d;
    let var_4 = Struct_4(global0.b, var_1.c);
    var var_5 = _wgslsmith_mod_i32(85331i & u_input.a.x, var_0.c.x) >> (func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_3.b, var_3.b, -372f)) + vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-1257f * var_1.b.b), _wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(-var_0.b)))).x % 32u);
    global0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.b, 329f, 664f, var_1.b.b) - vec4<f32>(1000f, 120f, var_1.b.b, -588f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -2105f, 669f, -971f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_4.a.b, 100f, -1485f)) - vec4<f32>(483f, 155f, global0.b.b, var_1.d.b))) * vec4<f32>(1431f, 2426f, _wgslsmith_f_op_f32(-1184f - 1011f), 391f)), true);
    let var_6 = var_0.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(select(_wgslsmith_mod_vec2_i32(var_3.d.zz, vec2<i32>(1i, var_1.d.d.x)), -u_input.a, select(vec2<bool>(false, false), vec2<bool>(true, true), global0.c)))), global0.d.b, ~_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, 1i) & reverseBits(u_input.a.x), _wgslsmith_mod_i32(~var_3.c.x, global0.d.c.x)), select(vec4<u32>(~61183u, ~49436u, var_0.a.x, 55675u), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, var_1.e.x, 0u, 0u), vec4<u32>(52596u, global0.b.a.x, var_3.a.x, var_6.x)) ^ abs(vec4<u32>(var_6.x, 60352u, var_6.x, 24437u)), ~vec4<u32>(var_4.a.a.x, 54998u, global0.a, global0.d.a.x), vec4<u32>(global0.b.a.x, ~0u, ~48454u, var_6.x)), select(select(select(vec4<bool>(true, true, true, global0.c), vec4<bool>(var_1.c, false, false, false), vec4<bool>(var_1.c, true, var_1.c, false)), !vec4<bool>(false, var_1.c, true, true), true), vec4<bool>(!var_1.c, var_4.b, any(vec4<bool>(var_1.c, var_4.b, false, var_4.b)), var_4.b), true)));
}

