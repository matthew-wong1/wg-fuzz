struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: array<vec2<u32>, 8>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> i32 {
    global2 = array<vec2<u32>, 8>();
    var var_0 = -firstTrailingBit(max(vec3<i32>(global0.a.d, 2147483647i, arg_0.e.a.d) & vec3<i32>(22167i, -7346i, global0.a.d), select(vec3<i32>(arg_1, 2147483647i, -1i), vec3<i32>(arg_0.b.a.d, u_input.a.x, arg_0.d.a.d), vec3<bool>(global0.a.b, arg_0.d.a.b, arg_0.b.a.b)))) ^ abs(~(~(vec3<i32>(arg_0.e.a.d, -39979i, 0i) << (vec3<u32>(0u, arg_0.c, 4294967295u) % vec3<u32>(32u)))));
    var var_1 = false;
    return -_wgslsmith_div_i32(_wgslsmith_add_i32(~(arg_1 >> (global0.a.a % 32u)), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(12190i, 43842i, global0.a.d, 21566i), vec4<i32>(global0.a.d, arg_0.d.a.d, global0.a.d, -13840i)) & min(-2147483647i, min(-2147483647i, arg_0.b.a.d)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> vec4<f32> {
    global0 = Struct_2(Struct_1(arg_1.a, global0.a.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1348f * -116f) - -456f), 2476f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global0.a.c.x + arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1220f) * _wgslsmith_f_op_f32(min(global0.a.c.x, 352f)))), -(~(-1i << (arg_0 % 32u)))));
    global2 = array<vec2<u32>, 8>();
    var var_0 = 38458u;
    var var_1 = Struct_3(select(select(!select(vec2<bool>(false, arg_1.b), vec2<bool>(arg_1.b, false), vec2<bool>(true, arg_1.b)), vec2<bool>(select(false, true, arg_1.b), true), vec2<bool>(true, false && arg_1.b)), vec2<bool>(true, !any(vec4<bool>(arg_3.a, true, true, false))), vec2<bool>(true, false)), Struct_2(Struct_1(arg_0, true, _wgslsmith_f_op_vec4_f32(global0.a.c * global0.a.c), 1i)), _wgslsmith_add_u32(63881u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.a, _wgslsmith_add_u32(global0.a.a, arg_1.a)), ~global0.a.a)), Struct_2(global0.a), Struct_2(Struct_1(167823u, false, vec4<f32>(_wgslsmith_f_op_f32(arg_3.b.x - -278f), _wgslsmith_f_op_f32(max(-1962f, arg_3.b.x)), _wgslsmith_div_f32(global0.a.c.x, 1492f), -282f), firstLeadingBit(max(90438i, u_input.a.x)))));
    global0 = Struct_2(Struct_1(arg_0, !(_wgslsmith_div_u32(var_1.d.a.a, arg_0) <= ~0u), _wgslsmith_f_op_vec4_f32(var_1.e.a.c - vec4<f32>(-336f, _wgslsmith_f_op_f32(-1179f + global0.a.c.x), -2125f, _wgslsmith_div_f32(var_1.d.a.c.x, arg_3.b.x))), global0.a.d));
    return global0.a.c;
}

fn func_2() -> Struct_2 {
    var var_0 = global0.a;
    let var_1 = vec3<bool>(all(select(vec2<bool>(var_0.b, false), select(vec2<bool>(false, global0.a.b), vec2<bool>(var_0.b, global0.a.b), vec2<bool>(global0.a.b, var_0.b)), !(true | var_0.b))), true, !global0.a.b);
    global0 = Struct_2(Struct_1(global0.a.a, true, _wgslsmith_f_op_vec4_f32(func_4(~1841u, Struct_1(global0.a.a, !var_1.x, vec4<f32>(-640f, var_0.c.x, -928f, -804f), func_3(Struct_3(var_1.xx, Struct_2(global0.a), 1u, Struct_2(Struct_1(var_0.a, var_1.x, global0.a.c, -6177i)), Struct_2(global0.a)), u_input.a.x)), i32(-1i) * -676i, Struct_4(var_0.b && false, vec2<f32>(-1722f, var_0.c.x), ~vec2<i32>(-2147483647i, var_0.d), 7138i, vec3<i32>(u_input.a.x, 1i, global0.a.d)))), u_input.a.x));
    global0 = Struct_2(Struct_1(var_0.a, any(var_1.xz), _wgslsmith_div_vec4_f32(vec4<f32>(-433f, -267f, var_0.c.x, _wgslsmith_f_op_f32(-1000f - global0.a.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-159f, var_0.c.x, var_0.c.x, -619f))))), -47939i));
    var var_2 = (_wgslsmith_sub_i32(-var_0.d, u_input.a.x) == u_input.a.x) & select(global0.a.b, all(var_1), !(_wgslsmith_clamp_i32(u_input.a.x, -18789i, u_input.a.x) <= max(-576i, global0.a.d)));
    return Struct_2(global0.a);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_3 {
    global0 = func_2();
    var var_0 = 0u;
    var var_1 = global0.a.d | _wgslsmith_mod_i32(u_input.a.x, ~reverseBits(select(-24258i, global0.a.d, global0.a.b)));
    var_1 = 0i;
    let var_2 = select(select(select(!vec2<bool>(global0.a.b, true), vec2<bool>(global0.a.b, !global0.a.b), !global0.a.b), select(vec2<bool>(true, true), select(select(vec2<bool>(global0.a.b, global0.a.b), vec2<bool>(false, global0.a.b), vec2<bool>(global0.a.b, global0.a.b)), select(vec2<bool>(false, true), vec2<bool>(global0.a.b, global0.a.b), global0.a.b), !vec2<bool>(global0.a.b, global0.a.b)), false), all(!(!vec4<bool>(false, global0.a.b, global0.a.b, global0.a.b)))), select(select(vec2<bool>(!global0.a.b, !global0.a.b), select(vec2<bool>(global0.a.b, false), !vec2<bool>(true, global0.a.b), any(vec2<bool>(false, true))), !global0.a.b), vec2<bool>(global0.a.b, global0.a.b), !(any(vec3<bool>(global0.a.b, false, global0.a.b)) && (global0.a.a != global0.a.a))), global0.a.b);
    return Struct_3(var_2, Struct_2(Struct_1(_wgslsmith_clamp_u32(global0.a.a, global0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a, global0.a.a, 1u), vec3<u32>(1u, 4294967295u, 6217u))), any(!vec4<bool>(global0.a.b, false, var_2.x, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, arg_0, arg_0, global0.a.c.x) - vec4<f32>(432f, -1090f, 1424f, -442f)), u_input.a.x)), global0.a.a, func_2(), Struct_2(global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~min(global0.a.a, global0.a.a) & 16598u), 4294967295u);
    global1 = array<vec3<f32>, 17>();
    global2 = array<vec2<u32>, 8>();
    global2 = array<vec2<u32>, 8>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.c.x), 154f));
    var var_2 = func_1(-1152f, ~(-vec3<i32>(1i, -30845i, firstTrailingBit(global0.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

