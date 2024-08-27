struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = u_input.d;
    var_0 = 14855i;
    var_0 = u_input.d;
    let var_1 = u_input.a;
    var var_2 = true;
    return true;
}

fn func_2() -> vec3<i32> {
    var var_0 = !vec3<bool>(!(!func_3(vec2<f32>(1005f, -617f))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(false, true, false))), func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(609f, 1034f), vec2<f32>(-1000f, -195f), false))) | (_wgslsmith_f_op_f32(select(-218f, -1208f, false)) != _wgslsmith_f_op_f32(f32(-1f) * -794f)));
    let var_1 = var_0.x;
    let var_2 = 24008i;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(118f + -2155f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f) + -1389f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1226f * 456f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-216f, -1872f, false)), -591f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -866f), -222f, _wgslsmith_f_op_f32(floor(-739f)))));
    var_0 = select(select(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), any(var_0.yy)), vec3<bool>(var_0.x, !func_3(var_3.zz), (var_0.x | var_0.x) & var_0.x), false), !vec3<bool>(false, _wgslsmith_f_op_f32(max(-797f, 357f)) != var_3.x, false), !select(vec3<bool>(true, true, select(var_0.x, var_0.x, var_0.x)), vec3<bool>(u_input.c >= u_input.e, true, all(vec3<bool>(true, var_0.x, var_0.x))), select(!vec3<bool>(var_0.x, false, true), select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, var_0.x), var_0.x), !var_0.x)));
    return _wgslsmith_add_vec3_i32(vec3<i32>(1i, var_2, ~(~_wgslsmith_clamp_i32(u_input.a, var_2, var_2))), -vec3<i32>(-17700i, _wgslsmith_clamp_i32(0i, u_input.a, -1i) & ~0i, max(~16295i, -1i)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    return Struct_1(min(func_2(), firstTrailingBit(max(-vec3<i32>(u_input.a, -27238i, u_input.b), ~vec3<i32>(7355i, 41603i, u_input.d)))), select(vec3<bool>(true, true, true), !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), false), false), ~(~(u_input.a & 78136i) >> (u_input.c % 32u)), 42011u, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(~u_input.c), ~(~u_input.c)), vec2<u32>(countOneBits(4294967295u >> (u_input.e % 32u)), u_input.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(0u);
    var var_1 = 1i;
    var var_2 = vec3<f32>(-880f, _wgslsmith_f_op_f32(1314f + -517f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_3 = ~vec4<i32>(-46904i, reverseBits(abs(45112i) | reverseBits(u_input.b)), -max(_wgslsmith_mult_i32(var_0.a.x, 2147483647i), -u_input.a), -_wgslsmith_dot_vec3_i32(var_0.a, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, var_0.a.x, 2147483647i), vec3<i32>(2147483647i, u_input.a, u_input.b))));
    let var_4 = !var_0.b.yz;
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2209f, _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(abs(var_2.x)))))) + vec3<f32>(var_2.x, 729f, var_2.x));
    var var_5 = vec3<i32>(61815i, abs(abs(-9829i)), reverseBits(1i) ^ u_input.d) & var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(var_0.d, u_input.e) << (~abs(vec2<u32>(1u, 19382u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_2.x));
}

