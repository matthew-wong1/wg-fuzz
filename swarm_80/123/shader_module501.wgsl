struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-485f);

var<private> global1: bool;

var<private> global2: vec2<u32>;

var<private> global3: i32 = 30259i;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = true;
    var var_0 = u_input.b;
    let var_1 = Struct_2(~(~(reverseBits(27651u) ^ var_0.x)), arg_1.a);
    global2 = ~min(var_0.zy, select(vec2<u32>(1u, ~0u), ~(~vec2<u32>(global2.x, global2.x)), true));
    global0 = arg_1;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = 19392i;
    var var_1 = arg_2;
    global3 = ~1i;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(583f)))));
    global2 = vec2<u32>(_wgslsmith_mod_u32(~(~arg_1.a ^ select(global2.x, 35588u, true)), ~0u), max(abs(13402u), _wgslsmith_mod_u32(_wgslsmith_div_u32(~3432u, u_input.b.x ^ 27985u), global2.x)));
    return min(countOneBits(_wgslsmith_mult_u32(~u_input.b.x, countOneBits(arg_1.a))), u_input.d.x);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(u_input.c, u_input.c);
    var var_1 = Struct_2(func_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(915f + -1506f), -558f))), Struct_2(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - -666f)), (u_input.d.x >> (0u % 32u)) << (select(countOneBits(1u), 73214u, func_3(Struct_1(1465f), Struct_1(-246f))) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), all(vec2<bool>(true, true))))));
    let var_2 = 4294967295u;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.b));
    global3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 5132i, -2147483647i, u_input.e.x), vec4<i32>(-1i, 2147483647i, u_input.c.x, u_input.e.x)), -2147483647i), -firstLeadingBit(2147483647i)), max(-2147483647i, ~(-1i)) | var_0.x, 37853i), -(1i ^ ~(~var_0.x)));
    return countOneBits(countOneBits(-42873i));
}

fn func_5(arg_0: vec4<i32>) -> vec3<bool> {
    global3 = 61314i;
    let var_0 = !vec4<bool>(true, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), !(45597i >= (0i << (u_input.d.x % 32u))), true);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - global0.a) + 553f)));
    var var_2 = u_input.b.x;
    global1 = !var_0.x;
    return !(!vec3<bool>(_wgslsmith_f_op_f32(ceil(global0.a)) < 1383f, func_3(Struct_1(global0.a), Struct_1(-837f)), var_0.x));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = arg_0.x;
    return Struct_1(global0.a);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    global0 = func_6(func_5(-vec4<i32>(-1i, func_2(), _wgslsmith_mod_i32(u_input.c.x, 35675i), -17195i)), Struct_2(countOneBits(_wgslsmith_mod_u32(1u | arg_1.a, global2.x)), -908f), Struct_2(global2.x, arg_0));
    var var_0 = -abs(vec3<i32>(1i, firstTrailingBit(u_input.e.x), u_input.e.x));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.e.x, _wgslsmith_mod_i32(countOneBits(-2147483647i), -4135i), -1i), 65547i, _wgslsmith_mod_i32(-var_0.x << (1u % 32u), 1i)), u_input.c);
    let var_1 = 1u;
    let var_2 = Struct_1(-1582f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.a, Struct_2(~countOneBits(_wgslsmith_clamp_u32(1u, 1u, u_input.a)), global0.a));
    var var_1 = _wgslsmith_add_u32(u_input.b.x, ~49120u);
    global3 = -(0i >> ((~(~var_0.a) ^ ~62896u) % 32u));
    var var_2 = global0.a;
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, var_0.a, u_input.a ^ ~_wgslsmith_div_u32(var_0.a, 93984u), global2.x), ~vec4<u32>(_wgslsmith_clamp_u32(8668u, 0u, ~u_input.d.x), 16688u, ~1u | func_1(var_0.b, Struct_2(1u, -1207f)).a, firstLeadingBit(global2.x)));
    let var_4 = !(global0.a >= -150f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c.x, _wgslsmith_add_i32(u_input.c.x, 2147483647i)), vec2<i32>(~u_input.e.x, func_2())) ^ u_input.c.yy);
}

