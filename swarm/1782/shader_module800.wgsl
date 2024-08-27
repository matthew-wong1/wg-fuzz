struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_mod_i32(abs(1i), 2147483647i), -141f, vec3<bool>(true, global0.c.x, true), global0.d);
    return global0.c;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: i32) -> f32 {
    let var_0 = any(!func_3());
    global1 = Struct_1(-abs(_wgslsmith_sub_i32(abs(-9239i), ~global0.d.x)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_f_op_f32(abs(-195f)))) * -1093f)), global0.c, vec2<i32>(-firstTrailingBit(-3281i), arg_2) & u_input.c);
    global0 = Struct_1(22706i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-278f)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2605f, _wgslsmith_f_op_f32(global1.b * arg_1)), _wgslsmith_f_op_f32(ceil(global0.b))))), global1.c, max(select(vec2<i32>(1i, max(-1i, 1i)), u_input.c, var_0), vec2<i32>(u_input.d, arg_2)));
    var var_1 = vec2<u32>(u_input.b.x, 1u);
    let var_2 = Struct_1(_wgslsmith_mult_i32(-81229i, arg_2 & u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-425f, -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))), global0.c, abs(select(firstTrailingBit(min(vec2<i32>(global1.d.x, 0i), u_input.c)), global1.d, func_3().xz)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - global1.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.b))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1475f + _wgslsmith_f_op_f32(func_2(88324u, arg_2, arg_1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1386f)), _wgslsmith_f_op_f32(func_2(arg_0.x, global1.b, u_input.c.x)))) * 835f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1474f, arg_2, global1.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2316f, global1.b, 437f))))))));
    let var_1 = Struct_1(1i, _wgslsmith_f_op_f32(-global0.b), arg_1.c, arg_1.d);
    let var_2 = arg_1;
    let var_3 = vec2<u32>(~(~arg_0.x), u_input.b.x);
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(0i, max(_wgslsmith_div_i32(31501i, global0.a), ~13986i))), 1f, var_2.c, min(max(var_2.d, countOneBits(~var_2.d)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_2.d, var_1.d), global0.d), max(var_2.d, abs(vec2<i32>(-22910i, 19871i))))));
    return Struct_1(-26986i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.b)))) + _wgslsmith_div_f32(1880f, _wgslsmith_f_op_f32(f32(-1f) * -931f))), !var_1.c, _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_2.d, vec2<i32>(u_input.d, var_1.a)), vec2<i32>(arg_1.a, 11846i)), ~vec2<i32>(-29573i, i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec2<u32>((u_input.b.x | ~0u) << (~u_input.b.x % 32u), u_input.b.x), Struct_1(-35145i, 687f, global0.c, abs(vec2<i32>(global0.d.x, u_input.d))), global0.b);
    var var_0 = ~global0.d;
    global1 = Struct_1(~(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, global0.d.x, -4716i), vec3<i32>(global0.d.x, u_input.d, global0.d.x), global0.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -50944i, 0i), vec3<i32>(-11923i, global1.a, var_0.x)))), _wgslsmith_f_op_f32(-global1.b), !(!global1.c), global0.d);
    let var_1 = Struct_1(-48589i, global0.b, select(vec3<bool>(true, _wgslsmith_f_op_f32(-global0.b) > 1487f, false), vec3<bool>(global1.c.x, !global1.c.x || true, !global0.c.x || true), global0.c.x), -u_input.c & global1.d);
    let var_2 = func_1(vec2<u32>((4294967295u ^ u_input.b.x) << ((u_input.b.x << (4294967295u % 32u)) % 32u), u_input.b.x) << (u_input.b.zx % vec2<u32>(32u)), var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(sign(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 59318u), u_input.b.zy), select(u_input.b.x, 0u, true)), firstLeadingBit(vec3<u32>(u_input.b.x, 65937u, 18396u))), vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 1u), u_input.b.x) ^ vec3<u32>(u_input.b.x, 0u, 19849u), global1.c.x));
}

