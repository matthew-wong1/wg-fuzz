struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_3 {
    let var_0 = global1.c;
    var var_1 = Struct_5(_wgslsmith_add_u32(firstLeadingBit(68011u), _wgslsmith_clamp_u32(~(25216u ^ global1.c.c), ~(global0.c ^ var_0.c), select(u_input.c, 41086u, global1.a.x) | _wgslsmith_mod_u32(32598u, 1u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 573f);
    global2 = -u_input.a.x ^ ~_wgslsmith_mult_i32((global0.b ^ var_0.b) >> (_wgslsmith_add_u32(u_input.c, 1u) % 32u), abs(var_0.b));
    var var_3 = vec3<i32>(var_0.b, u_input.a.x, 2147483647i);
    return Struct_3(63882u, -var_0.b);
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(global0.a)))));
    global2 = _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(75492i, 0i)), -15120i), -2147483647i, _wgslsmith_div_i32(global1.c.b, global1.c.b));
    var var_1 = 23321u;
    var var_2 = countOneBits(~4294967295u);
    var var_3 = Struct_4(vec4<bool>(!any(global1.a.yxx), false, false && global1.a.x, any(global1.a.yx)), global1.b, Struct_1(global1.e.x, -_wgslsmith_sub_i32(u_input.b, 0i) << (arg_0.a % 32u), ~(~arg_0.a), global0.d, global1.c.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1.e)))));
    return firstLeadingBit(-34941i) << (global0.c % 32u);
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1253f), global0.a))));
    let var_2 = -vec3<i32>(func_3(func_2()), (i32(-1i) * -global1.c.b) | _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, -120116i, u_input.b), vec3<i32>(u_input.b, global0.b, u_input.b))), global0.b & global0.b);
    var var_3 = vec3<i32>(-14115i, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(Struct_3(global1.c.d.x, var_2.x)), countOneBits(-20186i)), vec2<i32>(2147483647i, global0.b) ^ -u_input.a.yx) >> (~(~u_input.c) % 32u));
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(407f, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-578f)))))), vec3<f32>(-1190f, 1171f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c.e.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(586f * 1320f), _wgslsmith_div_f32(global0.a, global1.d.x)))));
    return Struct_2(global1.c, !vec4<bool>(var_0, var_0, var_0, true), vec4<f32>(_wgslsmith_f_op_f32(-global1.d.x), -1948f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1930f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x * -1414f)), true))), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(var_0.d.a - 1f), var_0.a.a)));
    var var_2 = vec2<i32>(global0.b, -28707i);
    var_2 = _wgslsmith_clamp_vec2_i32(~((u_input.a.xx << (global1.c.d.yx % vec2<u32>(32u))) & ~u_input.a.yy) & ~_wgslsmith_mod_vec2_i32(~vec2<i32>(1i, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(14114i, -2147483647i), u_input.a.yy)), ~(vec2<i32>(507i, u_input.b) >> ((~vec2<u32>(42735u, 53694u) | abs(global1.c.d.xy)) % vec2<u32>(32u))), firstLeadingBit(u_input.a.yy));
    var var_3 = vec2<u32>(0u, 23006u);
    let var_4 = func_2();
    let var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1391f))), _wgslsmith_mult_u32(~58864u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(31448u, var_0.d.d.x), 8272u)));
}

