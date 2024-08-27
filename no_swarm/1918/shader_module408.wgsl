struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_3(vec3<i32>(u_input.a, -1i, reverseBits(u_input.a)), 0i >= ~u_input.a, ~abs(abs(vec2<i32>(arg_1.c.x, -1203i))));
    var var_1 = u_input.b.x;
    var var_2 = 4294967295u;
    let var_3 = arg_1;
    let var_4 = var_0.b;
    return 0u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = ~(~(~(~(~u_input.b.x))));
    var var_1 = all(vec3<bool>(select(u_input.b.x == 74632u, arg_0.b, true), true, true)) & true;
    var_1 = false;
    var_1 = !arg_0.b;
    let var_2 = vec3<u32>(var_0, _wgslsmith_mod_u32(var_0 & var_0, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d)) * 278f), Struct_2(arg_0, countOneBits(u_input.b), ~vec3<i32>(-2147483647i, u_input.a, 13544i), vec4<u32>(var_0, u_input.b.x, u_input.b.x, 4294967295u)))), func_3(_wgslsmith_f_op_f32(-arg_0.d), Struct_2(Struct_1(arg_0.a || arg_0.a, arg_0.a, _wgslsmith_add_i32(arg_1.x, 2147483647i), arg_0.d), vec3<u32>(_wgslsmith_mult_u32(var_0, 0u), 4294967295u, min(1u, 0u)), vec3<i32>(-arg_0.c, reverseBits(-33339i), arg_1.x), max(vec4<u32>(0u, u_input.b.x, var_0, var_0), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0)))));
    return Struct_1(min((i32(-1i) * -1i) & _wgslsmith_add_i32(u_input.a, 2147483647i), 26822i) <= reverseBits(abs(arg_0.c)), arg_0.b == (_wgslsmith_f_op_f32(704f * _wgslsmith_f_op_f32(198f * arg_0.d)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1500f + arg_0.d))), -1i, _wgslsmith_f_op_f32(550f + 570f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1052f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(sign(-702f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1473f * 751f))), 976f));
    let var_1 = Struct_2(func_2(Struct_1(true, false, -1i, _wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(min(933f, -502f)))), ~(-(~vec3<i32>(57887i, -1i, -14590i)))), u_input.b, vec3<i32>(min(reverseBits(func_2(Struct_1(true, true, u_input.a, -167f), vec3<i32>(-44246i, u_input.a, -2147483647i)).c), u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 62386i) ^ vec3<i32>(-2147483647i, u_input.a, u_input.a), ~vec3<i32>(-53493i, u_input.a, u_input.a)), 24444i), i32(-1i) * -16338i), min(~min(~vec4<u32>(u_input.b.x, 3506u, u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 59072u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 45790u, 4294967295u)) ^ vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), ~vec4<u32>(u_input.b.x, 0u, 1u, 72180u))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = Struct_2(func_1(), u_input.b, vec3<i32>(-u_input.a, -57461i, -(-u_input.a >> (u_input.b.x % 32u))), ~abs(vec4<u32>(abs(u_input.b.x), 19308u, 34554u, 81849u)));
    var var_2 = !(!(!select(select(vec4<bool>(true, var_1.a.b, var_1.a.b, var_1.a.b), vec4<bool>(var_1.a.b, false, false, var_1.a.b), false), vec4<bool>(var_1.a.b, var_1.a.b, true, var_1.a.b), vec4<bool>(var_1.a.b, var_1.a.b, false, false))));
    let var_3 = func_2(Struct_1(!func_2(func_2(var_1.a, vec3<i32>(-2147483647i, u_input.a, 22535i)), firstTrailingBit(var_1.c)).a, true, 1i, var_1.a.d), var_1.c);
    var var_4 = true;
    var var_5 = var_1.a.d;
    var var_6 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, -132f, var_1.a.d, -202f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.d, 1687f, -901f, var_1.a.d), vec4<f32>(var_3.d, 1204f, -189f, -1987f)))))), _wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-479f + _wgslsmith_f_op_f32(var_1.a.d * 2004f)), func_1().d))), (abs(_wgslsmith_mod_vec3_i32(var_1.c, vec3<i32>(-2147483647i, 4636i, 2147483647i))) << (_wgslsmith_clamp_vec3_u32(firstTrailingBit(var_1.d.wzy), max(var_1.d.yyy, u_input.b), abs(vec3<u32>(1u, u_input.b.x, 31107u))) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, max(var_1.b.x, u_input.b.x)), var_1.d.x, reverseBits(var_1.b.x) ^ u_input.b.x) % vec3<u32>(32u)));
}

