struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, 0i, -15062i), vec3<f32>(-181f, 380f, -2069f), true, vec4<bool>(true, true, false, true));

var<private> global1: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> f32 {
    var var_0 = arg_2;
    var_0 = Struct_4(abs(firstLeadingBit(~(-30308i))));
    let var_1 = ~(~_wgslsmith_sub_i32(1i, u_input.d));
    var var_2 = max(-20959i, ((u_input.d << (u_input.a.x % 32u)) ^ -1i) ^ _wgslsmith_dot_vec2_i32(~global1.a.zx, global1.a.yz)) ^ _wgslsmith_mult_i32(-2147483647i | min(_wgslsmith_mod_i32(arg_0.a.c, -7396i), -global1.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.a, var_1), ~arg_0.a.a.a.yy), _wgslsmith_div_i32(~global0.a.x, arg_2.a)));
    var var_3 = arg_0.a;
    return _wgslsmith_f_op_f32(-var_3.a.b.x);
}

fn func_2() -> Struct_3 {
    var var_0 = global0.b.x;
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(global0.a, global1.a), vec3<f32>(global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1136f - -648f))), _wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(f32(-1f) * -1632f))), 504f), global0.b.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.b.x, global1.b.x, global1.c)), _wgslsmith_div_f32(-604f, 279f), true))), vec4<bool>(global0.c, u_input.a.x > ~_wgslsmith_add_u32(53369u, u_input.c), global1.a.x >= abs(_wgslsmith_mult_i32(-73760i, u_input.e)), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(global0.a, vec3<f32>(global0.b.x, 1391f, global0.b.x), false, global1.d), global0.b, global1.a.x)), -695f, Struct_4(global0.a.x))) < _wgslsmith_f_op_f32(select(-1377f, _wgslsmith_f_op_f32(-global0.b.x), false))));
    global1 = Struct_1(vec3<i32>(-44161i, min(24935i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.x, var_1.a.x, global1.a.x), -var_1.a)), -2147483647i), vec3<f32>(549f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)) + _wgslsmith_f_op_f32(sign(-1249f))), 565f), _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.a.x, i32(-1i) * -2147483647i), firstLeadingBit(var_1.a.x) | 0i, countOneBits(global0.a.x)) <= -2147483647i, vec4<bool>(all(!var_1.d) | false, var_1.c, !any(vec4<bool>(false, true, true, false)), !any(!global1.d.xww)));
    var var_2 = Struct_1(vec3<i32>(countOneBits(-1i), abs(_wgslsmith_dot_vec3_i32(global1.a | vec3<i32>(global1.a.x, var_1.a.x, global0.a.x), -global1.a)), -2147483647i), global0.b, 4294967295u >= ~_wgslsmith_add_u32(u_input.c | 0u, 1u), select(!global0.d, !select(vec4<bool>(global1.d.x, global0.d.x, true, global0.c), !vec4<bool>(global1.c, false, global0.d.x, global0.c), global0.d), select(select(!global1.d, global1.d, global0.d), global1.d, vec4<bool>(true, true, true, true))));
    global1 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(floor(var_1.b)), !(!var_1.d.x), var_2.d);
    return Struct_3(Struct_2(Struct_1(vec3<i32>(~(-1i), -28273i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-545f, var_2.b.x, global0.b.x))), false, vec4<bool>(true, true, true, true)), global0.b, 1i));
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = var_0;
    let var_2 = _wgslsmith_add_u32((0u >> ((u_input.a.x & ~4294967295u) % 32u)) << (~(~(~1u)) % 32u), _wgslsmith_mod_u32(1u, ~(4294967295u << (u_input.a.x % 32u)) & (u_input.c & ~u_input.a.x)));
    let var_3 = global1.a;
    global1 = var_1.a.a;
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> Struct_4 {
    global0 = arg_0.a.a;
    global0 = func_1(Struct_4(-1i)).a.a;
    var var_0 = arg_2;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_add_i32(1i, global0.a.x) < ~_wgslsmith_add_i32(arg_0.a.c, ~global1.a.x), global1.d);
    let var_1 = func_1(Struct_4(~_wgslsmith_mod_i32(global1.a.x & u_input.d, 388i << (u_input.c % 32u))));
    return Struct_4(u_input.b << (_wgslsmith_mult_u32(arg_3, _wgslsmith_mod_u32(_wgslsmith_mult_u32(17432u, 48167u), max(arg_3, 5353u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-vec3<i32>(~(-2147483647i), _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, global1.a.x), 22170i), -min(-2147483647i, global0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-706f - global1.b.x), _wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(sign(-369f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-103f)), 1f, _wgslsmith_f_op_f32(abs(1000f))))), false, !(!vec4<bool>(true, false, true, global1.d.x)));
    var var_0 = global0.b.x;
    let var_1 = func_4(func_1(Struct_4(global0.a.x)), global0.d.zz, global0.b.x, ~countOneBits(u_input.a.x));
    let var_2 = global1.b.yx;
    var var_3 = ~(~(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(12304u, u_input.c), u_input.a.yz))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-var_2.x))));
    let var_5 = abs(u_input.c << (select(_wgslsmith_div_u32(u_input.c, 57776u) & 4294967295u, u_input.a.x, global0.c) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, var_5), vec4<u32>(44206u, var_5, 2113u, 62686u)) >> (firstLeadingBit(vec4<u32>(0u, var_5, u_input.c, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(1u >> (var_5 % 32u), var_5, countOneBits(u_input.c), u_input.c & u_input.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-1557f + -1637f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(select(global1.b.x, 303f, global0.c)), select(global1.c, global0.c, global1.c))), global1.b.x, var_2.x)), var_5, global0.b);
}

