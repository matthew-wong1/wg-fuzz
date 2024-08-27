struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_3(vec2<u32>(~max(0u, u_input.a), ~_wgslsmith_mult_u32(arg_1.a.x, 49457u)) | _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.a.x, 19786u), vec2<u32>(arg_1.a.x, 52943u) | arg_1.a), abs(vec2<u32>(u_input.a, u_input.a))), true, _wgslsmith_sub_i32(arg_1.c, ~reverseBits(~2147483647i)));
    let var_1 = false;
    global0 = all(vec2<bool>(-920f >= arg_2, true));
    global0 = all(vec4<bool>(!var_1, arg_3 <= _wgslsmith_f_op_f32(step(-2094f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_1, !any(vec2<bool>(true, true))));
    let var_2 = Struct_1(vec4<i32>(max(arg_1.c, 0i), abs(_wgslsmith_sub_i32(arg_1.c, _wgslsmith_sub_i32(-60813i, var_0.c))), 1i, ~arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -314f), vec4<bool>(select((arg_3 == -680f) | all(vec3<bool>(var_0.b, arg_1.b, true)), false, false), var_1 & arg_1.b, !any(!vec3<bool>(arg_1.b, var_1, true)), true), vec3<i32>(-_wgslsmith_div_i32(var_0.c, arg_0.x), 34419i, 0i));
    return select(var_2.c.zxx, !select(!(!vec3<bool>(true, arg_1.b, false)), vec3<bool>(true, true, all(var_2.c.yy)), vec3<bool>(any(var_2.c.wyx), select(var_0.b, true, arg_1.b), var_2.c.x)), var_2.c.yzz);
}

fn func_3() -> vec4<bool> {
    let var_0 = max(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, u_input.a)), reverseBits(abs(u_input.a))), abs(min(countOneBits(vec2<u32>(u_input.a, 32156u)), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, u_input.a)))), ~abs(vec2<u32>(4294967295u, min(3919u, 31968u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-201f, -1884f, 142f, 983f), vec4<f32>(1167f, 282f, 1615f, 675f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, -1006f, 1486f, 1246f) - vec4<f32>(528f, 111f, -948f, 461f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1210f, 1984f, -1339f, 1000f))) - vec4<f32>(-1550f, -1000f, 693f, -819f)))));
    let var_2 = Struct_1(-max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, -2147483647i, -2147483647i, 1i) >> ((vec4<u32>(42148u, var_0.x, var_0.x, u_input.a) ^ vec4<u32>(4294967295u, 16878u, 4294967295u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + 695f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(316f * 1161f), _wgslsmith_f_op_f32(sign(var_1.x))))))), select(!vec4<bool>(all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, true, true)), true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, false)), vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, false), all(vec3<bool>(true, false, false)) || true)), vec3<i32>(1i << (abs(~var_0.x) % 32u), _wgslsmith_add_i32(-1i, (-18815i << (var_0.x % 32u)) ^ _wgslsmith_add_i32(1i, 1i)), ~_wgslsmith_mult_i32(-6896i << (0u % 32u), 1i)));
    let var_3 = ~var_0.x;
    global0 = any(!select(select(var_2.c, vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), var_2.c.x), !vec4<bool>(false, var_2.c.x, false, true), !(!vec4<bool>(var_2.c.x, false, true, false))));
    return var_2.c;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global0 = !any(!func_2(vec4<i32>(2147483647i, 32807i, arg_0.x, arg_0.x), Struct_3(vec2<u32>(u_input.a, u_input.a), true, arg_0.x), 708f, 1000f)) & true;
    global0 = any(vec2<bool>(true, all(vec4<bool>(true, true, true, true))));
    let var_0 = Struct_2(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, u_input.a, 22128u, 0u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), true), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, reverseBits(0u), ~15908u, ~1u), vec4<u32>(4294967295u, ~1u, 6323u, firstLeadingBit(u_input.a)))), Struct_1(vec4<i32>(abs(select(-20016i, arg_0.x, true)), arg_0.x, arg_0.x, abs(24820i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-745f - 218f) * _wgslsmith_f_op_f32(round(-1175f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1171f - 321f)))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, true, true, true)), true, false, true), func_3()), arg_0), select(-2147483647i, ~arg_0.x, arg_0.x >= (arg_0.x << ((17331u >> (1u % 32u)) % 32u))), true);
    let var_1 = u_input.a << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(abs(358u), firstLeadingBit(var_0.a.x), ~var_0.a.x), vec3<u32>(1u, _wgslsmith_add_u32(20604u, u_input.a), var_0.a.x >> (u_input.a % 32u))), vec3<u32>(var_0.a.x << (0u % 32u), _wgslsmith_mod_u32(var_0.a.x, 28058u) & 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, u_input.a, 0u), var_0.a.xww) ^ _wgslsmith_div_u32(u_input.a, 1u))) % 32u);
    var var_2 = Struct_3(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(111232u, 59525u), var_0.a.wz), vec2<u32>(28104u, u_input.a)), any(var_0.b.c.wx) & !all(vec4<bool>(true, true, false, false)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.x << (min(u_input.a, var_0.a.x) % 32u), -abs(22343i)), ~0i));
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(2147483647i, -1i, 2147483647i))))), _wgslsmith_f_op_f32(max(420f, -1050f))));
    global0 = !(!(!(!func_2(vec4<i32>(-1i, 1i, 2147483647i, -1i), Struct_3(vec2<u32>(1u, 69845u), false, 1i), var_0.x, 1659f).x)));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x)));
    let var_1 = ~reverseBits(-vec3<i32>(1i, 1i, 1i)) >> (vec3<u32>(72502u, u_input.a, u_input.a) % vec3<u32>(32u));
    let var_2 = ~(~vec3<u32>(countOneBits(u_input.a), 47925u, _wgslsmith_add_u32(u_input.a, u_input.a))) | ~vec3<u32>(~1u, _wgslsmith_mod_u32(0u, 35462u), _wgslsmith_mult_u32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(min(179f, var_0.x))))), -779f, _wgslsmith_mult_u32(var_2.x, 21211u), ~u_input.a);
}

