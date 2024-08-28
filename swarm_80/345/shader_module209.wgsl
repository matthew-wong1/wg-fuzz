struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    return Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -845f), -886f, _wgslsmith_f_op_f32(961f + 1459f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1923f, -1071f, -2103f) - vec3<f32>(-694f, 495f, -920f)))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, 2147483647i, -1i), vec3<i32>(global1.x, -1i, global1.x), vec3<i32>(-2147483647i, 2147483647i, global1.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 1u, global2.x), vec3<u32>(global2.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)), select(vec3<i32>(2147483647i, -32320i, -2615i), vec3<i32>(0i, global1.x, global1.x), vec3<bool>(arg_0.a, false, true)) >> (_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(4294967295u, 0u, global2.x), u_input.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(-58257i, 1i, global1.x ^ -26108i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global1.x, global1.x)));
    let var_0 = 14671u;
    global3 = array<Struct_3, 4>();
    global2 = u_input.a.yx;
    return -1201f;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = -53470i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    global0 = global2.x;
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(433f, 1183f)), _wgslsmith_f_op_f32(378f + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + arg_0.x), 640f)))), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(arg_1.x))), _wgslsmith_f_op_f32(round(-1000f)), 1281f));
    var_0 = arg_2.x;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<u32>(~4294967295u, u_input.a.x);
    var var_0 = func_1(true);
    global1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(6474i, 1i, min(-8946i, 1i)), vec3<i32>(global1.x, countOneBits(global1.x) << (~u_input.b % 32u), -2147483647i)) >> (~(~(~func_2(vec3<f32>(-457f, -102f, var_0.a.x), vec4<bool>(true, false, false, true), vec3<i32>(2147483647i, global1.x, global1.x)))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(861f)))))) * var_0.a.x));
    let var_2 = Struct_2(Struct_1(true & (true || any(vec4<bool>(true, false, true, false)))));
    let var_3 = ~global1.x;
    let var_4 = _wgslsmith_add_i32(var_3, -var_3);
    var var_5 = Struct_3(Struct_2(Struct_1(true == select(var_2.a.a, var_2.a.a, false))), vec3<bool>(var_2.a.a, all(vec4<bool>(false, any(vec2<bool>(var_2.a.a, var_2.a.a)), var_1 != 1069f, true)), var_2.a.a), vec3<bool>(true, true, abs(_wgslsmith_div_i32(-1i, var_3)) > -_wgslsmith_dot_vec2_i32(global1.yx, global1.yz)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1802f * 763f), _wgslsmith_f_op_f32(select(1477f, -305f, var_2.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(125f + 1095f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -764f, 298f, -1278f) + vec4<f32>(var_0.a.x, var_1, var_1, -541f))))), var_2.a.a);
    let var_6 = !(var_5.a.a.a || var_5.e);
    let x = u_input.a;
    s_output = StorageBuffer(-424f, vec3<f32>(499f, _wgslsmith_f_op_f32(func_1(false).a.x - _wgslsmith_f_op_f32(ceil(var_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(725f, 1309f))))), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(40381i >> (u_input.a.x % 32u), -(~var_3), var_4), ~(~max(global1.x, global1.x))), select(global2.x, ~global2.x, any(select(var_5.c, select(vec3<bool>(var_2.a.a, var_2.a.a, var_6), vec3<bool>(var_6, var_5.b.x, var_5.e), vec3<bool>(true, true, true)), vec3<bool>(true, var_6, var_5.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-168f, var_0.a.x, -893f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, -1000f, var_5.d.x), var_0.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_5.d.x), _wgslsmith_f_op_f32(-var_5.d.x), _wgslsmith_f_op_f32(-var_5.d.x)) * _wgslsmith_f_op_vec3_f32(floor(var_0.a)))));
}

