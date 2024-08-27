struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = ~(~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 16840u), vec3<u32>(24642u, 34727u, 0u))) & vec3<u32>(max(10006u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 51762u, arg_0), vec3<u32>(1u, 763u, arg_1))), u_input.a, ~(~20825u)));
    var var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-539f * var_1.a.x), var_1.a.yy, ~abs(reverseBits(u_input.e)), (4229i > max(1i, -u_input.d.x)) || all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), u_input.e);
    var var_3 = vec4<bool>(true, !var_2.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b.zy, select(vec2<i32>(54734i, -1i), vec2<i32>(0i, u_input.e), vec2<bool>(var_2.d, true))), u_input.c) != -2147483647i, !((_wgslsmith_f_op_f32(max(arg_2.a.x, var_1.a.x)) == _wgslsmith_f_op_f32(abs(var_1.a.x))) && false));
    var var_4 = ~(~(~select(0u, abs(arg_0), !var_2.d)));
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = !vec4<bool>(true, func_3(~u_input.a, ~u_input.a, Struct_2(vec3<f32>(-794f, 1133f, -1000f))), true, !(select(true, false, true) & false));
    var var_1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.e, u_input.d.x >> (abs(u_input.a) % 32u)), -28250i), 1i);
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(-132f, -287f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2011f - -896f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1437f, 1000f, 270f) * vec3<f32>(918f, -975f, 1428f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(398f, -130f, -797f) * vec3<f32>(-155f, 288f, 1000f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 151f, -324f, -1521f) - vec4<f32>(var_2.a.x, var_2.a.x, 786f, -1854f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_2.a.x, -345f, var_2.a.x)))))))));
    var_1 = select(vec2<i32>(_wgslsmith_div_i32(-u_input.d.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, 2147483647i, var_1.x, -2147483647i), u_input.d), vec4<i32>(var_1.x, var_1.x, -2147483647i, 41762i))), 2147483647i), vec2<i32>(_wgslsmith_sub_i32(28504i, -18386i), 1i), false);
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x * var_3.x), -874f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(var_2.a.x, -813f, -1173f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, -832f, var_3.x) + var_3.ywx)), var_0.zzz))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = u_input.a;
    var_0 = ~4294967295u;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<bool> {
    let var_0 = func_4(arg_0.d, func_2(), -1320f, 607f);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_div_u32(43478u, arg_1.x);
    let var_3 = var_1;
    var_2 = countOneBits(min(u_input.a, arg_1.x) & _wgslsmith_sub_u32(4294967295u, select(arg_1.x, u_input.a, var_3.d))) >> (~_wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(u_input.a, u_input.a)) % 32u);
    return select(!select(vec2<bool>(var_1.d, all(vec3<bool>(var_3.d, true, false))), vec2<bool>(true, !var_1.d), arg_0.d), !vec2<bool>(select(var_3.d, all(vec2<bool>(false, false)), true), var_1.d), !var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec4<i32>(~u_input.d.x, u_input.d.x, 1i, -39014i));
    var var_1 = func_1(Struct_1(-1639f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1395f, -633f))), -46253i, any(vec2<bool>(var_0.x <= var_0.x, true)), -1i), abs(vec4<u32>(min(~1u, ~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(48431u, 48014u, u_input.a, u_input.a)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(u_input.a, u_input.a, 0u)), 1u)));
    var var_2 = var_1.x;
    var_0 = ~max(u_input.b, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, max(u_input.a, u_input.a), 23152u) | vec3<u32>(_wgslsmith_clamp_u32(139940u, u_input.a, 33452u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), countOneBits(u_input.a)), ~(~vec3<u32>(7910u, 34100u, 0u)) ^ ~(~vec3<u32>(u_input.a, 1u, u_input.a))));
}

