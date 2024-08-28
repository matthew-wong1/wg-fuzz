struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    var var_0 = arg_1.a.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 521f) * _wgslsmith_f_op_f32(-arg_0.b.x)))), vec2<f32>(_wgslsmith_div_f32(595f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1602f)))), global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b))) * vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(833f + arg_0.b.x), -1946f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global0.x)) - -224f))) * arg_0.b);
    let var_1 = arg_0.d;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))) + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1928f * global0.x) * -187f) * _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.x, 558f), _wgslsmith_f_op_f32(-arg_0.b.x)))));
    return vec2<i32>(arg_0.d.c.x, _wgslsmith_div_i32(arg_1.b, arg_0.c.b)) ^ vec2<i32>(u_input.c, 2147483647i);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> bool {
    var var_0 = vec4<bool>(true, !(abs(0i) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 1i, 26766i), abs(vec4<i32>(u_input.c, -6564i, arg_0, -8701i)))), select(select(arg_1.x, arg_1.x, arg_1.x), all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !arg_1.ywy, arg_1.x)), 1u <= (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(22583u, 4294967295u, 4294967295u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(52461u, 17798u, 61319u, u_input.a)))), arg_1.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -439f) * vec4<f32>(global0.x, -1199f, 361f, 200f)) + vec4<f32>(722f, global0.x, -377f, 552f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(693f, -425f, global0.x, global0.x) - vec4<f32>(1531f, 205f, -576f, global0.x))))));
    var_0 = vec4<bool>(var_0.x, arg_1.x, !any(var_0.zxw), !(_wgslsmith_f_op_f32(var_1.x * 297f) <= _wgslsmith_f_op_f32(f32(-1f) * -650f)) || arg_1.x);
    return arg_0 != -11847i;
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = Struct_2(vec2<bool>(true, any(select(vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, false, arg_0.e.b), vec4<bool>(arg_0.d.b, true, arg_0.d.b, arg_0.c.a.x), false))), max(_wgslsmith_div_i32(countOneBits(-1726i), ~(~u_input.b.x)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(18745i, arg_0.c.b) << (firstLeadingBit(84541u) % 32u), _wgslsmith_sub_i32(-29569i, _wgslsmith_mult_i32(arg_0.d.c.x, -2147483647i)), select(abs(arg_0.e.c.x), u_input.d, true))));
    var var_1 = select(arg_0.e.c.wz, reverseBits(vec2<i32>(u_input.d, 0i) | -func_2(arg_0, Struct_2(arg_0.c.a, 9286i), arg_0.e.b)), !vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(arg_0.d.b, var_0.a.x))));
    let var_2 = any(vec3<bool>(!func_3(var_0.b | arg_0.c.b, vec4<bool>(false, false, arg_0.e.b, arg_0.e.b)), true, !var_0.a.x));
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1117f, global0.x)));
    let var_3 = 1000f;
    return u_input.a | (u_input.a >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.d.a.x, 72207u, u_input.a) & max(0u, u_input.a), ~u_input.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(u_input.a, u_input.a, 44085u, u_input.a)), ~vec4<u32>(func_1(Struct_3(u_input.a, vec2<f32>(-1109f, global0.x), Struct_2(vec2<bool>(false, true), u_input.b.x), Struct_1(vec2<u32>(4294967295u, 4294967295u), false, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.d)), Struct_1(vec2<u32>(u_input.a, u_input.a), false, vec4<i32>(u_input.b.x, u_input.c, u_input.d, -1i))), -1666f), ~u_input.a, ~0u, max(u_input.a, 1u))) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(u_input.a), ~u_input.a, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(62101u, u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, 73379u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 61414u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (abs(vec4<u32>(22115u, u_input.a, u_input.a, 71661u) & _wgslsmith_mult_vec4_u32(vec4<u32>(24176u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = ~(vec3<i32>(-1i) * -(u_input.b & u_input.b)) >> ((~(~vec3<u32>(8414u, u_input.a, 119237u)) >> (~var_0.zzw % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(global0.x)))))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = Struct_3(u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-355f + _wgslsmith_f_op_f32(min(-977f, 139f))), _wgslsmith_f_op_f32(global0.x * 795f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), global0.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(235f, global0.x), vec2<f32>(363f, global0.x), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-986f, global0.x)))), vec2<bool>(1366f <= global0.x, var_1.x > 2147483647i)))), Struct_2(!select(var_2, var_2, var_2), i32(-1i) * -22478i), Struct_1(vec2<u32>(0u << (1u % 32u), ~1u), !any(var_2), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, 1616i, var_1.x), vec4<i32>(_wgslsmith_mod_i32(44842i, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(6172i, 2147483647i, var_1.x, -49725i), vec4<i32>(-15134i, -5669i, 1i, u_input.b.x)), var_1.x >> (1u % 32u), u_input.c))), Struct_1(abs(~var_0.xx), false, -(~(~vec4<i32>(var_1.x, 0i, var_1.x, u_input.c)))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -424f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1256f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(global0.x)))), -717f);
    var var_5 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, _wgslsmith_f_op_f32(sign(var_3.b.x)), _wgslsmith_f_op_f32(ceil(var_3.b.x)), -1000f) + vec4<f32>(1157f, _wgslsmith_div_f32(802f, global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.d.c.x, 49780i, _wgslsmith_mult_i32(-24031i, var_3.d.c.x), -var_1.x), var_3.e.c << (~var_0 % vec4<u32>(32u))), _wgslsmith_add_i32(~(-14828i), var_3.d.c.x)), vec3<f32>(1622f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(step(797f, _wgslsmith_div_f32(var_3.b.x, _wgslsmith_f_op_f32(min(global0.x, global0.x)))))), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, 0i), 3926i) >> (~func_1(Struct_3(0u, var_3.b, Struct_2(vec2<bool>(true, var_3.e.b), var_3.c.b), Struct_1(var_0.zw, true, var_3.d.c), var_3.e), _wgslsmith_f_op_f32(f32(-1f) * -620f)) % 32u));
}

