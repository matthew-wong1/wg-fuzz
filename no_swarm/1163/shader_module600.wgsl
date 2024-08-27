struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 5030i;

var<private> global1: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = arg_1.e;
    global0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-530f, arg_1.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_1.a) + vec2<f32>(arg_1.a, -168f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-736f + 265f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var var_2 = countOneBits(firstTrailingBit(abs(~_wgslsmith_mult_vec2_u32(u_input.d.wy, u_input.c.zy))));
    var_2 = vec2<u32>(u_input.c.x, ~_wgslsmith_div_u32(_wgslsmith_div_u32(81056u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 39448u, u_input.b), vec3<u32>(4294967295u, 55960u, u_input.d.x))), firstLeadingBit(89812u)));
    return arg_1.b.xyz;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    return ~4294967295u;
}

fn func_2() -> i32 {
    global1 = (0u << (_wgslsmith_dot_vec4_u32(u_input.d, ~(~u_input.d)) % 32u)) & ~31452u;
    let var_0 = ~(u_input.c.x | func_4(func_3(true, Struct_1(502f, vec4<bool>(true, false, true, true), false, 19532u, 0u)), ~vec2<u32>(16088u, 1u), !any(vec2<bool>(false, true))));
    var var_1 = vec3<i32>(~_wgslsmith_div_i32(~(-30773i & u_input.a), -(~u_input.a)), ~(~(~u_input.a)) << ((~4294967295u << (0u % 32u)) % 32u), -13355i);
    var var_2 = _wgslsmith_div_u32(~0u, ~u_input.c.x);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-581f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-305f, 417f))) * 821f)));
    return 2147483647i;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>) -> bool {
    var var_0 = func_2();
    var var_1 = ~u_input.c.xx;
    let var_2 = u_input.c.zy;
    let var_3 = false;
    let var_4 = u_input.b;
    return !(!(!arg_2.x) && arg_2.x);
}

fn func_5(arg_0: Struct_1) -> Struct_5 {
    global1 = ~(~60343u);
    global1 = arg_0.e;
    global0 = _wgslsmith_mult_i32(~(-62614i), u_input.a);
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~u_input.d.x, _wgslsmith_add_u32(u_input.b, u_input.b), ~u_input.c.x), _wgslsmith_add_vec4_u32(firstTrailingBit(u_input.d), firstLeadingBit(abs(~vec4<u32>(1u, u_input.b, arg_0.e, 35997u)))));
    let var_1 = Struct_5(_wgslsmith_mod_i32(u_input.a << (88424u % 32u), select(max(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), arg_0.c)), Struct_2(func_3(false & (false & arg_0.b.x), Struct_1(_wgslsmith_div_f32(arg_0.a, 1382f), arg_0.b, !arg_0.b.x, _wgslsmith_mult_u32(u_input.d.x, 4294967295u), _wgslsmith_dot_vec3_u32(u_input.d.yxz, u_input.d.yyx))).zy), Struct_3(_wgslsmith_mult_i32(~(-u_input.a), ~1i), Struct_2(arg_0.b.zw), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))))), Struct_3(-1i, Struct_2(arg_0.b.zx), vec2<f32>(_wgslsmith_f_op_f32(trunc(-687f)), 869f)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = u_input.d.yzz;
    global1 = _wgslsmith_mult_u32(abs(~_wgslsmith_sub_u32(u_input.d.x, u_input.c.x) >> (_wgslsmith_mod_u32(var_0.x << (4294967295u % 32u), 1u) % 32u)), var_0.x);
    var var_1 = func_5(Struct_1(193f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_1(vec2<i32>(-12105i, max(u_input.a, 2147483647i)), var_0.x ^ 4294967295u, vec2<bool>(true, true)), 76055u, var_0.x));
    var var_2 = ~(~(~(~69396u) << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 33116u, 54173u), u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_0.x, u_input.b, var_0.x), u_input.d, vec4<u32>(var_0.x, 0u, u_input.b, 15430u))) % 32u)));
    let var_3 = func_5(Struct_1(var_1.c.c.x, select(vec4<bool>(true || var_1.c.b.a.x, false, true, true), select(!vec4<bool>(var_1.d.b.a.x, var_1.d.b.a.x, false, var_1.d.b.a.x), !vec4<bool>(false, var_1.d.b.a.x, var_1.b.a.x, true), !vec4<bool>(var_1.c.b.a.x, true, var_1.d.b.a.x, var_1.c.b.a.x)), vec4<bool>(var_1.d.b.a.x, var_1.c.b.a.x, u_input.c.x < 0u, var_1.d.b.a.x)), func_3(_wgslsmith_f_op_f32(exp2(var_1.c.c.x)) >= -1816f, Struct_1(_wgslsmith_f_op_f32(min(-641f, var_1.c.c.x)), select(vec4<bool>(false, var_1.c.b.a.x, var_1.b.a.x, false), vec4<bool>(var_1.d.b.a.x, true, var_1.d.b.a.x, var_1.d.b.a.x), false), var_1.c.b.a.x, ~1u, _wgslsmith_add_u32(u_input.b, 4294967295u))).x, _wgslsmith_dot_vec4_u32(~u_input.d, ~(~u_input.d)), ~_wgslsmith_clamp_u32(1u, ~60390u, _wgslsmith_add_u32(var_0.x, var_0.x)))).d;
    let var_4 = Struct_3(-1i, func_5(Struct_1(_wgslsmith_f_op_f32(-var_1.d.c.x), !select(vec4<bool>(var_1.b.a.x, var_1.d.b.a.x, true, true), vec4<bool>(true, true, var_3.b.a.x, var_1.d.b.a.x), vec4<bool>(var_1.b.a.x, var_3.b.a.x, false, false)), false, u_input.b, ~1u)).b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_3.c)) + vec2<f32>(var_1.c.c.x, -1028f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_1.d.c.x * _wgslsmith_f_op_f32(min(-636f, var_1.d.c.x)))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, -1125f, -279f, 433f) * vec4<f32>(var_3.c.x, var_4.c.x, var_1.c.c.x, 628f)), vec4<f32>(_wgslsmith_div_f32(var_4.c.x, 236f), _wgslsmith_f_op_f32(var_4.c.x - var_3.c.x), _wgslsmith_f_op_f32(trunc(1176f)), _wgslsmith_f_op_f32(select(var_1.d.c.x, var_1.c.c.x, var_3.b.a.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, var_1.c.c.x, 868f, -874f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1500f, var_4.c.x, 1341f, var_3.c.x)))))))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, -2147483647i);
}

