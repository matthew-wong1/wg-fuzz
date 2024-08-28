struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(731f, -165f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x + 159f), 1262f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, -287f)), vec2<f32>(arg_0, 1750f))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global0.x) + vec2<f32>(arg_1.d, arg_1.d)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-871f, global0.x))))))));
    let var_0 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-2086f * -464f), _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c)), arg_1.c), _wgslsmith_f_op_f32(-arg_0), ~_wgslsmith_mod_i32(abs(max(u_input.a.x, u_input.a.x)), -(35352i | u_input.a.x)));
    let var_1 = !(!(false || !select(false, true, false)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.b, arg_1.d), vec2<f32>(-1902f, 1388f)))) * vec2<f32>(-1170f, 2563f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-450f, arg_1.b, var_1)))), -1000f));
    var var_2 = var_0;
    return -1i;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x))), global0.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-583f * _wgslsmith_f_op_f32(select(838f, -1554f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -152f)))), _wgslsmith_f_op_f32(-global0.x)));
    var var_0 = Struct_1(u_input.c, 1140f, ~vec4<u32>(1u, 1u, 1u, 1u), -638f, i32(-1i) * -24844i);
    let var_1 = Struct_3(true, Struct_2(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), !vec3<bool>(global0.x > var_0.d, true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1888f, var_0.d, var_0.d, var_0.d)))), ~_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_0.e >> (u_input.c % 32u)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_0.c.wx, var_0.c.zz), vec2<u32>(1u, 1u))), 24913u, vec4<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-5752i, 21892i, u_input.d.x, u_input.b), vec4<i32>(25020i, u_input.a.x, 2147483647i, u_input.b))), -1i, _wgslsmith_mod_i32(u_input.d.x & _wgslsmith_add_i32(12125i, -2147483647i), func_3(_wgslsmith_f_op_f32(-global0.x), Struct_1(0u, -1006f, vec4<u32>(1u, 0u, 28509u, u_input.c), -154f, -16714i))), abs(~(u_input.b ^ 75621i))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), 229f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(617f + global0.x), _wgslsmith_f_op_f32(var_1.b.c.x * 1000f))), 1407f)))), _wgslsmith_f_op_f32(global0.x - 767f));
    let var_3 = 4294967295u;
    return Struct_3(select(var_1.b.b.x, all(select(select(vec3<bool>(false, false, var_1.a), vec3<bool>(false, var_1.b.b.x, var_1.a), var_1.a), var_1.b.b, var_1.b.a)), var_1.b.b.x), var_1.b, _wgslsmith_sub_u32(var_0.a, firstLeadingBit(var_1.c)), vec4<i32>(var_0.e, countOneBits(var_0.e ^ (27331i << (1u % 32u))), 2147483647i, u_input.d.x));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<bool> {
    global0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-global0.x));
    var var_0 = func_2();
    global0 = var_0.b.c.yz;
    let var_1 = Struct_1(~(select(47140u, var_0.b.e.x, false & var_0.b.b.x) ^ var_0.b.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))), vec4<u32>(u_input.c, 94721u, _wgslsmith_dot_vec2_u32(~vec2<u32>(32804u, arg_1) >> (var_0.b.e % vec2<u32>(32u)), vec2<u32>(~1u, _wgslsmith_add_u32(var_0.c, 1u))), u_input.c), 191f, i32(-1i) * -1i);
    let var_2 = func_2();
    return !(!(!var_2.b.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_1(global0.x, 1u);
    var_1 = select(vec2<bool>(true, true), !(!vec2<bool>(false, var_1.x)), var_1.x);
    let var_2 = Struct_1(var_0, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0, u_input.c, u_input.c, 1u)), ~(vec4<u32>(0u, 35445u, var_0, u_input.c) & vec4<u32>(u_input.c, var_0, 0u, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(step(-1081f, global0.x)))))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(abs(var_2.c.zxy << (var_2.c.wwx % vec3<u32>(32u)))), max(~abs(var_2.c.wyx), vec3<u32>(var_0, u_input.c, select(6824u, 0u, var_1.x))), !vec3<bool>(true, var_0 > u_input.c, func_2().a)), vec4<i32>(-1i, 0i, u_input.d.x, select(u_input.d.x, var_2.e, var_1.x | true)));
}

