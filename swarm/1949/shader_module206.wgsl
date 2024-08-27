struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: Struct_5) -> vec4<bool> {
    var var_0 = arg_3.b;
    var var_1 = arg_3.b;
    var_0 = arg_3.b;
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.a - var_1.a.a), var_0.a.a)), u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~48831u, var_0.a.b), ~arg_3.d)), -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zxz, vec3<i32>(arg_0.x, arg_0.x, arg_0.x) >> (u_input.a.zwx % vec3<u32>(32u))), max(_wgslsmith_sub_vec3_i32(u_input.b.wxy, vec3<i32>(-2147483647i, 2147483647i, arg_0.x)), vec3<i32>(-22465i, arg_0.x, arg_0.x))), var_0.a.a, var_1.a);
    let var_3 = arg_1;
    return !vec4<bool>(var_3 & arg_3.c.x, any(arg_3.c), false, all(!select(vec3<bool>(var_3, false, false), vec3<bool>(true, true, false), true)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(round(564f)), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(u_input.a.wyz, vec3<u32>(u_input.a.x, 4357u, 41484u))), vec3<u32>(76889u << (1u % 32u), ~u_input.a.x, 1u >> (u_input.a.x % 32u)))), u_input.b.zx, all(select(func_3(~vec3<i32>(1i, u_input.b.x, 2857i), false, var_0 | 1u, Struct_5(u_input.b.x, Struct_2(Struct_1(-1425f, 4294967295u), 28041u), vec2<bool>(false, false), 4294967295u, u_input.b.zx)), vec4<bool>(true, true, u_input.b.x > u_input.b.x, any(vec3<bool>(false, false, false))), true)), Struct_1(-795f, select(u_input.a.x, firstTrailingBit(_wgslsmith_sub_u32(4294967295u, u_input.a.x)), true)), true || (_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x) == u_input.b.x));
    var var_2 = var_1.a;
    var_2 = var_1.d;
    var var_3 = Struct_2(Struct_1(var_2.a, ~var_2.b), 1u);
    return Struct_1(482f, 1u);
}

fn func_1(arg_0: vec2<f32>) -> Struct_5 {
    let var_0 = Struct_3(Struct_2(func_2(), u_input.a.x), ~vec3<i32>(firstLeadingBit(~45918i), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) & _wgslsmith_add_i32(u_input.b.x, -1i), 0i), arg_0.x, func_2());
    let var_1 = 2296f;
    var var_2 = Struct_5(u_input.b.x, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(224f))), ~u_input.a.x >> (1u % 32u)), ~(~_wgslsmith_add_u32(u_input.a.x, 4294967295u))), vec2<bool>(any(vec4<bool>(false, true, false, false)) && (_wgslsmith_mod_i32(u_input.b.x, -1i) < _wgslsmith_sub_i32(u_input.b.x, 25224i)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))), var_0.d.b, u_input.b.yw);
    let var_3 = u_input.a.xzy;
    var_2 = Struct_5(2147483647i, Struct_2(Struct_1(-400f, _wgslsmith_div_u32(var_0.a.a.b << (1u % 32u), var_0.d.b)), 1u), var_2.c, _wgslsmith_dot_vec3_u32(reverseBits(~firstTrailingBit(vec3<u32>(1u, 29995u, 23249u))), var_3), u_input.b.xz);
    return Struct_5(-2147483647i, var_0.a, vec2<bool>((~var_0.b.x & var_2.e.x) <= reverseBits(u_input.b.x), false), ~var_0.a.b, -abs(var_0.b.xx));
}

fn func_4(arg_0: Struct_5) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-328f, 942f, arg_0.b.a.a), vec3<f32>(arg_0.b.a.a, 440f, arg_0.b.a.a))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.a.a, -704f, arg_0.b.a.a))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b.a.a, 1468f, 750f))), vec3<f32>(arg_0.b.a.a, arg_0.b.a.a, 417f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, 929f, -1428f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2006f, 605f, arg_0.b.a.a)))))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(475f, 793f), vec2<f32>(370f, -351f)))) - vec2<f32>(_wgslsmith_div_f32(561f, 217f), _wgslsmith_div_f32(-1299f, -493f)))));
}

