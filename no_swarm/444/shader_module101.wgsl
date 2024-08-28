struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(~33826u, ~u_input.b)), ~(~u_input.d.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(4294967295u, u_input.c.x, 42321u)), ~vec3<u32>(1166u, u_input.b, u_input.b) >> (~vec3<u32>(27379u, 10328u, u_input.b) % vec3<u32>(32u))), u_input.c.x), u_input.b);
    let var_1 = Struct_2(~(~firstLeadingBit(_wgslsmith_mod_i32(arg_1.b.x, arg_1.b.x))), max(40834u, max(_wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(34732u, 56152u))), ~select(u_input.d.x, 44939u, false))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + 581f);
    global0 = _wgslsmith_mod_i32(arg_1.b.x, -u_input.a >> (~var_0.x % 32u));
    var var_3 = 23304i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_2))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_2, var_2, arg_0.c))))) + _wgslsmith_f_op_f32(-1923f + _wgslsmith_f_op_f32(f32(-1f) * -178f))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1960f, var_2)))), 1080f, false));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> i32 {
    var var_0 = false;
    global0 = u_input.a;
    var var_1 = Struct_4(select(abs(_wgslsmith_mod_u32(u_input.c.x, ~u_input.b)), abs(u_input.d.x), !(abs(u_input.c.x) >= ~1u)), Struct_3(~(~_wgslsmith_sub_vec2_u32(u_input.c, u_input.d)), Struct_1(arg_0.zx, u_input.e, func_3(Struct_1(vec2<i32>(arg_0.x, u_input.e.x), vec4<i32>(u_input.e.x, -9079i, u_input.a, 0i), false), Struct_1(u_input.e.wz, vec4<i32>(u_input.e.x, arg_0.x, 2147483647i, arg_0.x), false)) & true), arg_1.b), u_input.c.x, 43798u, arg_1);
    var_1 = Struct_4(~arg_1.b, Struct_3(vec2<u32>(4294967295u, 23178u), var_1.b.b, firstTrailingBit(69877u)), 84296u, u_input.b, Struct_2(_wgslsmith_mod_i32(abs(arg_1.a), 1i), var_1.c));
    global0 = 1i;
    return var_1.b.b.a.x;
}

fn func_1() -> i32 {
    global0 = _wgslsmith_clamp_i32(select(-(~(-2317i)) << (u_input.d.x % 32u), _wgslsmith_add_i32(~0i, func_2(u_input.e.zxx, Struct_2(17940i, 4294967295u), -718f)), true), firstTrailingBit(u_input.a), 1i);
    global0 = -2147483647i;
    global0 = _wgslsmith_div_i32(u_input.e.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(~u_input.e.x), u_input.e.x), 1i, _wgslsmith_sub_i32(-1i >> (max(4294967295u, u_input.d.x) % 32u), _wgslsmith_dot_vec2_i32(u_input.e.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 0i), u_input.e.wx)))));
    let var_0 = Struct_2(-(~func_2(max(vec3<i32>(0i, 19866i, 32865i), vec3<i32>(6286i, u_input.e.x, u_input.a)), Struct_2(2147483647i, u_input.c.x), 911f)), 1u);
    var var_1 = Struct_4(var_0.b, Struct_3(abs(~vec2<u32>(var_0.b, u_input.b) | abs(vec2<u32>(4294967295u, 4294967295u))), Struct_1(~(~vec2<i32>(-60844i, u_input.a)), _wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(u_input.a, var_0.a, -69035i, u_input.e.x), u_input.e) ^ vec4<i32>(2147483647i, 6930i, -2147483647i, var_0.a), true), abs(u_input.c.x)), ~_wgslsmith_mult_u32(reverseBits(var_0.b), _wgslsmith_clamp_u32(~var_0.b, u_input.c.x >> (4294967295u % 32u), _wgslsmith_mod_u32(4294967295u, var_0.b))), var_0.b, var_0);
    return ~(-4895i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_2(u_input.e.x, ~u_input.c.x);
    let var_1 = 1u;
    global0 = u_input.e.x;
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(var_0.b, firstTrailingBit(1u)));
    global0 = abs(countOneBits(-2147483647i));
    global0 = 1i >> (1u % 32u);
    global0 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~_wgslsmith_mod_i32(var_0.a, u_input.a)), var_0.a), 2899u);
}

