struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = Struct_2(-19165i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(767f, -791f, -571f)))))), arg_1);
    var var_1 = Struct_3(~global0.a.zxw, u_input.a.x, var_0.c, arg_1.b);
    let var_2 = ~((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 0u, var_0.c.a.x), ~vec3<u32>(global0.a.x, var_1.a.x, 0u)) >> (var_1.c.a.x % 32u)) << (~(arg_0 & var_0.c.a.x) % 32u));
    var_0 = Struct_2(~(abs(~(-2147483647i)) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.c.a.x, u_input.c), arg_0) % 32u)), var_0.b, Struct_1(var_0.c.a, -10353i << ((0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 42017u, 4934u), vec3<u32>(0u, 78921u, 29706u))) % 32u)));
    var var_3 = Struct_2(1i, var_0.b, Struct_1(abs(_wgslsmith_div_vec4_u32(var_1.c.a, _wgslsmith_clamp_vec4_u32(var_1.c.a, var_1.c.a, var_1.c.a))), abs(var_0.a >> (~81198u % 32u))));
    return abs(~39166i >> (arg_1.a.x % 32u));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    var var_0 = ~select(max(min(vec2<i32>(2147483647i, -5345i), vec2<i32>(global0.b, global0.b)), max(vec2<i32>(global0.b, 0i), vec2<i32>(global0.b, global0.b))) << (min(~vec2<u32>(u_input.b, global0.a.x), u_input.a.xz) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(abs(22241i), -global0.b), ~(-1i)), !(!(!vec2<bool>(arg_0, false))));
    var_0 = max(select(vec2<i32>(_wgslsmith_clamp_i32(-1i, global0.b, _wgslsmith_div_i32(-45195i, 1i)), 26010i), vec2<i32>(var_0.x, -2147483647i), all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, false), true))), min((vec2<i32>(global0.b, var_0.x) ^ vec2<i32>(global0.b, var_0.x)) >> (global0.a.zw % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-11801i, var_0.x), vec2<i32>(global0.b, -3670i) & vec2<i32>(global0.b, 23523i))) | vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.b, -1i, var_0.x, var_0.x), firstLeadingBit(vec4<i32>(global0.b, global0.b, global0.b, global0.b)))));
    global0 = Struct_1(firstLeadingBit(~_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(u_input.b, u_input.a.x, 45093u, global0.a.x))), 0i ^ func_3(~firstTrailingBit(u_input.c), Struct_1(~vec4<u32>(u_input.c, global0.a.x, global0.a.x, 44706u), _wgslsmith_mod_i32(var_0.x, 8762i)), 30186i));
    let var_1 = Struct_3(select(global0.a.yxx, abs(countOneBits(global0.a.yzz)), vec3<bool>(arg_0, true, !arg_0)), ~(~(_wgslsmith_mult_u32(global0.a.x, global0.a.x) >> (_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(global0.a.x, 14520u)) % 32u))), Struct_1(global0.a, global0.b), ~(~1i));
    var_0 = min(~vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.b, var_1.c.b, var_1.d, var_0.x), vec4<i32>(-10544i, 1i, var_1.d, 1i)), -_wgslsmith_mod_i32(var_0.x, var_0.x)), -vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.b), vec2<i32>(var_1.d, -3409i)), reverseBits(-var_1.d)));
    return vec3<u32>(~var_1.b, 4294967295u, _wgslsmith_div_u32(global0.a.x, u_input.c));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(func_2(false), ~select(~u_input.a.x, firstLeadingBit(global0.a.x) ^ 4294967295u, true), Struct_1(vec4<u32>(reverseBits(u_input.b) << (~u_input.a.x % 32u), 1u, 0u, global0.a.x), -2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.b, -2147483647i, global0.b) >> (vec4<u32>(11009u, u_input.c, 49366u, global0.a.x) % vec4<u32>(32u)), abs(vec4<i32>(global0.b, 28478i, global0.b, 46282i)))), global0.b);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_1();
    let var_2 = Struct_3(~u_input.a, 315u, func_1(), _wgslsmith_clamp_i32(0i, global0.b, -75049i));
    let var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(150f)), _wgslsmith_div_f32(-3186f, -890f))), _wgslsmith_div_f32(-152f, _wgslsmith_f_op_f32(f32(-1f) * -543f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-592f))))));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-2147483647i, var_5.b), -2147483647i, var_3.b), abs(-vec3<i32>(-34713i, global0.b, -25330i)))), vec4<u32>(18580u >> (~(var_2.b << (1u % 32u)) % 32u), firstLeadingBit(~(var_0.x >> (69071u % 32u))), 78681u, 1u), vec3<u32>(~var_1.a.x, 3424u, 0u & firstTrailingBit(abs(77451u))), ~(-(~vec2<i32>(-41175i, var_1.b))), var_3.b);
}

