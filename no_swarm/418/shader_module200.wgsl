struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = global0.c;
    global0 = Struct_2(true, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) * _wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))));
    var_0 = -1045f;
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 63214u), u_input.c.x, 0u, 0u);
    global0 = Struct_2(all(vec3<bool>(true, true, true)), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -349f))));
    return vec4<i32>(u_input.a, ~(-2147483647i), 2147483647i, arg_1.x);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = 1435f;
    var var_1 = abs(max(countOneBits(-func_3(Struct_3(Struct_1(u_input.c.x, vec2<f32>(-1000f, 810f)), true, Struct_1(0u, vec2<f32>(-192f, global0.c))), vec3<i32>(-17388i, u_input.a, u_input.a), Struct_3(Struct_1(u_input.c.x, vec2<f32>(-368f, -787f)), global0.b, Struct_1(4294967295u, vec2<f32>(arg_0, 139f))))), firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a), vec4<i32>(2147483647i, 1i, -19744i, u_input.b)), abs(vec4<i32>(2147483647i, u_input.a, 49371i, u_input.a))))));
    global0 = Struct_2(false & !any(vec4<bool>(arg_1.x, false, false, false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-631f, arg_0)))) > _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-791f * -622f));
    var var_2 = Struct_4(vec2<i32>(12966i, -61996i) | firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.b, 2147483647i), vec4<i32>(var_1.x, -2147483647i, u_input.a, var_1.x)), 2147483647i)), false, vec2<i32>(-1i) * -var_1.yx, vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1497f)), -502f));
    let var_3 = Struct_2(true, global0.b, -1000f);
    return Struct_2(global0.b, global0.a, _wgslsmith_f_op_f32(floor(var_3.c)));
}

fn func_1() -> vec4<i32> {
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -532f), select(vec4<bool>(!global0.b || global0.b, global0.b, select(false, true, false) == global0.b, any(select(vec4<bool>(false, global0.a, false, global0.a), vec4<bool>(global0.b, true, global0.a, global0.b), global0.b))), select(vec4<bool>(true, global0.b, u_input.b < u_input.a, false), vec4<bool>(global0.a, true, true, !global0.b), global0.c <= -976f), u_input.c.x > max(6218u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 81989u, 1u), u_input.c))));
    var var_0 = Struct_3(Struct_1(1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-273f, global0.c), vec2<f32>(global0.c, 1263f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1104f, -286f))))), true, Struct_1(99513u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1365f, global0.c) + vec2<f32>(global0.c, global0.c)))), vec2<f32>(1000f, global0.c))));
    global0 = Struct_2((~var_0.c.a > _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.c.x), 119394u)) || (_wgslsmith_add_i32(u_input.a << (u_input.c.x % 32u), -16419i) > -6568i), true, -1195f);
    global0 = func_2(-658f, vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(var_0.b, var_0.b)), !func_2(var_0.c.b.x, select(vec4<bool>(true, var_0.b, var_0.b, true), vec4<bool>(false, false, var_0.b, false), true)).a, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, var_0.a.a), ~var_0.c.a) != (_wgslsmith_mod_u32(4294967295u, var_0.c.a) & var_0.c.a)));
    global0 = Struct_2(global0.b, !(!(global0.c <= _wgslsmith_div_f32(-1331f, 928f))), var_0.c.b.x);
    return -select(func_3(Struct_3(var_0.c, global0.a, var_0.c), _wgslsmith_add_vec3_i32(~vec3<i32>(1i, u_input.a, -13931i), vec3<i32>(u_input.b, -40690i, u_input.b) >> (u_input.c % vec3<u32>(32u))), Struct_3(Struct_1(0u, var_0.a.b), global0.a == false, var_0.a)), vec4<i32>(_wgslsmith_sub_i32(u_input.a, max(u_input.b, -1i)), -313i, abs(u_input.a), select(-u_input.b, -u_input.b, false)), false);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.c)))), arg_0);
    return Struct_2((_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) <= var_0.x) & (func_2(_wgslsmith_f_op_f32(f32(-1f) * -237f), vec4<bool>(true, true, true, true)).a & false), global0.c > global0.c, _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1165f + _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-global0.c))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(538f * -1164f)))))), func_1() ^ ~(-(vec4<i32>(-19930i, u_input.b, u_input.b, -20785i) << (vec4<u32>(0u, 0u, u_input.c.x, 51627u) % vec4<u32>(32u)))), u_input.c.x);
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-512f * global0.c)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global0.c), !(!vec4<bool>(global0.b, global0.a, global0.a, true))).c, -1258f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2584f, 720f, -1000f, global0.c), vec4<f32>(global0.c, global0.c, global0.c, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-271f, global0.c, global0.c, global0.c), vec4<f32>(global0.c, global0.c, global0.c, global0.c))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-210f, global0.c, global0.c, global0.c), vec4<f32>(-1290f, 665f, 453f, 986f))))));
    var var_2 = Struct_4(vec2<i32>(~1i, select(-1i, ~(-u_input.b), global0.a)), !any(!vec2<bool>(false, global0.b)), max(-vec2<i32>(-2147483647i, u_input.a), -(~vec2<i32>(u_input.b, u_input.b))) | abs(vec2<i32>(u_input.a, -1i)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-1093f - var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x))))));
    let var_3 = 581f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_3)), ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1552f)))));
}

