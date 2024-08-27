struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<i32>(23181i, -71389i, i32(-2147483648)), vec2<f32>(-353f, -423f), 302f, Struct_2(vec2<bool>(true, true), Struct_1(false), vec3<u32>(0u, 1u, 24373u), false)), Struct_3(vec3<i32>(-34932i, 1i, -1i), vec2<f32>(-1119f, 1000f), -774f, Struct_2(vec2<bool>(true, true), Struct_1(true), vec3<u32>(20800u, 108833u, 22424u), false)), Struct_3(vec3<i32>(-1i, -2843i, -1i), vec2<f32>(-561f, 1289f), -299f, Struct_2(vec2<bool>(true, true), Struct_1(true), vec3<u32>(0u, 57028u, 0u), true)), Struct_3(vec3<i32>(-12384i, 2147483647i, 23354i), vec2<f32>(-1000f, -345f), 1000f, Struct_2(vec2<bool>(false, false), Struct_1(true), vec3<u32>(53813u, 32674u, 72005u), true)), Struct_3(vec3<i32>(27778i, 29853i, 2147483647i), vec2<f32>(1000f, 787f), -958f, Struct_2(vec2<bool>(false, true), Struct_1(false), vec3<u32>(8841u, 1u, 4294967295u), true)), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), 16213i), vec2<f32>(207f, 1085f), -213f, Struct_2(vec2<bool>(false, true), Struct_1(false), vec3<u32>(0u, 108554u, 24299u), true)), Struct_3(vec3<i32>(-4846i, -38i, i32(-2147483648)), vec2<f32>(518f, -561f), 1000f, Struct_2(vec2<bool>(false, true), Struct_1(true), vec3<u32>(79866u, 82305u, 58511u), true)));

var<private> global1: f32 = -112f;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = u_input.a;
    let var_1 = Struct_4(~arg_1);
    global1 = -1564f;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_div_f32(-331f, -1441f), true))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1410f, -1267f)), -1447f)))), 1525f);
    let var_3 = !vec2<bool>(arg_2.x, arg_0);
    return select(vec2<bool>(true, (~1u << (u_input.c % 32u)) < abs(0u)), arg_2, !arg_2.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> f32 {
    global0 = array<Struct_3, 7>();
    var var_0 = Struct_2(select(vec2<bool>(true, false), vec2<bool>(false, any(vec2<bool>(true, false))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(true, true), func_3(true, arg_0.a, vec2<bool>(true, true)))), Struct_1(false), _wgslsmith_clamp_vec3_u32(u_input.d.www << (vec3<u32>(u_input.d.x | 30778u, ~21778u, ~4294967295u) % vec3<u32>(32u)), min(u_input.d.yzx, ~(~vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.c))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b << (u_input.d.x % 32u), 58982u, 4294967295u & arg_0.a.x), ~(~u_input.d.yxz))), true);
    let var_1 = vec2<u32>(max(var_0.c.x & _wgslsmith_div_u32(min(43158u, 63775u), min(var_0.c.x, 4294967295u)), reverseBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.c.x, 75291u), select(u_input.d.x, u_input.c, var_0.d), 0u))), _wgslsmith_clamp_u32(max(~0u, _wgslsmith_mult_u32(1u, ~23723u)), ~min(_wgslsmith_dot_vec3_u32(var_0.c, var_0.c), 37010u), 6919u));
    global0 = array<Struct_3, 7>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1624f, _wgslsmith_f_op_f32(floor(-274f)))))), 1305f);
    return _wgslsmith_f_op_f32(round(390f));
}

fn func_1() -> f32 {
    global1 = _wgslsmith_f_op_f32(func_2(Struct_4((u_input.d.yw & vec2<u32>(u_input.b, 24665u)) & firstTrailingBit(u_input.d.yy)), -vec4<i32>(u_input.a ^ u_input.a, -1i, u_input.a, ~(-9381i)) >> (vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(max(9435u, 2641u), _wgslsmith_mod_u32(u_input.c, u_input.c)), _wgslsmith_add_u32(abs(u_input.b), 1u), u_input.c) % vec4<u32>(32u))));
    global1 = 2126f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3149f - -1071f) * _wgslsmith_f_op_f32(ceil(1053f)))) * -691f) + _wgslsmith_f_op_f32(func_2(Struct_4(abs(vec2<u32>(70662u, u_input.b))), abs(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 13899i, 2147483647i), vec4<i32>(u_input.a, -1i, 10263i, 1i)))))));
    let var_0 = 66842i;
    var var_1 = 4089u == u_input.b;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-2750f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)) * 1f)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_0 = Struct_1(all(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), func_3(false, u_input.d.yx, vec2<bool>(false, false)).x), false)));
    var_0 = Struct_1(all(!select(func_3(false, vec2<u32>(u_input.b, u_input.c), vec2<bool>(var_0.a, false)), select(vec2<bool>(true, false), vec2<bool>(var_0.a, false), vec2<bool>(false, false)), func_3(true, u_input.d.zy, vec2<bool>(var_0.a, true)))));
    let var_1 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -871f))), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(1i, u_input.a, -85233i, u_input.a)) >> ((vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b) ^ (u_input.d | vec4<u32>(u_input.d.x, u_input.d.x, 22869u, u_input.d.x))) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_i32(~vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(17444i, u_input.a, u_input.a, u_input.a)), vec4<i32>(0i, _wgslsmith_sub_i32(u_input.a << (u_input.c % 32u), u_input.a), u_input.a, 0i)), _wgslsmith_f_op_f32(214f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) + _wgslsmith_f_op_f32(-1732f * 1380f)))));
}

