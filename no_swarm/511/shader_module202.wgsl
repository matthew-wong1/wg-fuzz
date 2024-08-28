struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(select(!global0.a.a, global0.a.a, vec2<bool>(true, global0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.a.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a.b, vec2<f32>(global0.a.b.x, global0.a.b.x), vec2<bool>(global0.a.a.x, global0.c)))), !vec2<bool>(true, global0.c))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.b))))));
    let var_1 = all(select(vec4<bool>(global0.c, global0.a.b.x < _wgslsmith_f_op_f32(-1232f * -1199f), global0.c & select(global0.c, true, global0.a.a.x), !(var_0.a.x & true)), !select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), !vec4<bool>(global0.a.a.x, true, var_0.a.x, false), var_0.a.x), var_0.a.x));
    var var_2 = global0.a;
    var_0 = global0.a;
    var_2 = global0.a;
    return Struct_2(Struct_1(vec2<bool>(_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(4294967295u, 4294967295u)) >= _wgslsmith_add_u32(30182u, u_input.b), !all(global0.a.a)), var_0.b), 1u, all(vec2<bool>(all(!vec3<bool>(false, var_1, true)), var_2.a.x)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec2<f32> {
    let var_0 = reverseBits(u_input.a);
    let var_1 = _wgslsmith_div_i32(i32(-1i) * -2147483647i, -u_input.a.x);
    global0 = Struct_2(func_1().a, 4294967295u, true);
    global0 = Struct_2(func_1().a, _wgslsmith_sub_u32(abs(~_wgslsmith_mod_u32(19196u, u_input.c.x)), ~global0.b), true && func_1().c);
    var var_2 = func_1();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(320f, var_2.a.b.x, global0.c)))))) * var_2.a.b);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = Struct_2(func_1().a, global0.b, !global0.c);
    var var_1 = ~(-_wgslsmith_add_vec3_i32(u_input.a.wwx, vec3<i32>(0i, firstTrailingBit(-1i), max(u_input.a.x, 1i))));
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.b, _wgslsmith_div_vec2_f32(vec2<f32>(global0.a.b.x, -369f), _wgslsmith_f_op_vec2_f32(global0.a.b * arg_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, arg_0.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(var_0.c, false, var_0.a.a.x), var_0.a.b.x)) + _wgslsmith_f_op_vec2_f32(ceil(var_0.a.b))))));
    var var_4 = 30336u;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_2(func_1().a, select(global0.b, (1u & _wgslsmith_sub_u32(1u, u_input.c.x)) << (19869u % 32u), global0.c), global0.a.a.x);
    global0 = Struct_2(func_1().a, _wgslsmith_mult_u32(1u | _wgslsmith_dot_vec3_u32(~u_input.d, func_2(Struct_1(global0.a.a, vec2<f32>(global0.a.b.x, global0.a.b.x)), vec2<i32>(u_input.a.x, u_input.a.x))), countOneBits(_wgslsmith_div_u32(0u, global0.b))), global0.a.a.x);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.b.x), -1000f))), _wgslsmith_div_f32(1609f, -376f), _wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f), 1000f));
    var var_1 = Struct_2(Struct_1(func_1().a.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1120f)), _wgslsmith_f_op_f32(global0.a.b.x * _wgslsmith_f_op_f32(floor(996f))))), ~global0.b, true);
    global0 = Struct_2(Struct_1(var_1.a.a, global0.a.b), 1u, true);
    let var_2 = ~var_1.b;
    let var_3 = vec3<u32>(0u, _wgslsmith_add_u32(~(~var_2), _wgslsmith_add_u32(30075u, ~u_input.d.x)), global0.b);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1902f, -1000f, -1395f, -169f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.x, 113f, var_1.a.b.x, var_1.a.b.x))))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(1179f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(-var_1.a.b.x))), _wgslsmith_f_op_f32(floor(-1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.b, u_input.c.x, min(var_1.b, u_input.b), 0u)), vec4<u32>(_wgslsmith_mult_u32(~1u, global0.b), _wgslsmith_clamp_u32(var_1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 0u), u_input.c), _wgslsmith_dot_vec2_u32(u_input.d.xz, var_3.yy)), 4294967295u, global0.b)), u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, _wgslsmith_add_vec2_i32(vec2<i32>(-25104i, u_input.a.x) ^ vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(-2147483647i, -5870i))), select(u_input.a.x, u_input.a.x << (var_3.x % 32u), func_1().a.a.x)), -abs(~u_input.a.xzy) ^ (u_input.a.wzx << (var_3 % vec3<u32>(32u))));
}

