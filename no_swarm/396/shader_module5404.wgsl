struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_u32(u_input.a.x << (~firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % 32u), ~1u);
    var var_2 = arg_0;
    let var_3 = !vec2<bool>(var_2.b, arg_0.b);
    var_1 = ~(~u_input.a.x);
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = ~(-vec2<i32>(u_input.b.x, ~u_input.b.x));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a * vec3<f32>(arg_0.a.x, 2399f, arg_1.a.x))), arg_1.a, arg_1.b & true)), !func_2(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1392f)).b, 488f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(522f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.a.yy)), func_2(func_2(Struct_1(arg_0.a, arg_2.b, -1311f), _wgslsmith_f_op_f32(206f + arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -280f) + _wgslsmith_f_op_f32(-arg_1.a.x))).a.xy)));
    var var_3 = arg_2;
    var_3 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1218f, arg_2.a.x, 783f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(707f, -741f, -1054f))))), countOneBits(u_input.a.x) < (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) ^ ~0u), -262f), _wgslsmith_f_op_f32(select(var_3.c, _wgslsmith_f_op_f32(-2345f - _wgslsmith_f_op_f32(f32(-1f) * -797f)), any(!(!vec3<bool>(var_1.b, true, arg_0.b))))));
    return -709f;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(169f, 917f)))) - _wgslsmith_div_f32(-1263f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(220f, _wgslsmith_div_f32(3289f, -609f)) + 145f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0)))), -2730f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(240f, _wgslsmith_f_op_f32(func_3(func_2(Struct_1(vec3<f32>(var_0, -1000f, var_1.x), false, var_1.x), -2542f), Struct_1(vec3<f32>(var_0, var_0, -1104f), true, -614f), Struct_1(vec3<f32>(-1243f, -145f, var_1.x), true, -219f))), _wgslsmith_f_op_f32(-func_2(Struct_1(vec3<f32>(434f, 144f, 857f), true, 1052f), 1470f).c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1183f, -1000f) * vec3<f32>(-282f, -1212f, var_1.x))) * _wgslsmith_f_op_vec3_f32(floor(func_2(Struct_1(vec3<f32>(var_1.x, 415f, var_1.x), false, -296f), -747f).a)))) + vec3<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1108f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0)))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-146f, var_0)), var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-680f - _wgslsmith_f_op_f32(f32(-1f) * -680f))))), false, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_1(vec3<f32>(-787f, var_1.x, var_0), true, 1268f), -505f), Struct_1(vec3<f32>(1538f, 1000f, var_0), false, var_0), func_2(Struct_1(vec3<f32>(var_1.x, var_1.x, var_1.x), false, var_1.x), var_1.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-543f, -805f, var_1.x), var_2.a))))), vec3<f32>(var_2.a.x, var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1719f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 731f))))));
    return !(!(!select(!vec4<bool>(var_2.b, var_2.b, false, false), vec4<bool>(var_2.b, false, false, var_2.b), vec4<bool>(false, var_2.b, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1587f, -1153f, -181f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1791f, 478f, _wgslsmith_f_op_f32(842f * 1115f)))), any(func_1()), _wgslsmith_f_op_f32(select(1379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f * _wgslsmith_div_f32(-2691f, 1023f))), all(vec2<bool>(true, 0u != u_input.a.x)))));
    let var_1 = func_2(func_2(Struct_1(var_0.a, !var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * -1106f)), _wgslsmith_f_op_f32(-971f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(var_0, -1000f).c) + _wgslsmith_f_op_f32(ceil(1000f)))));
    var var_2 = u_input.b.x;
    var_2 = -35425i;
    let var_3 = ~min(~(-33389i), firstLeadingBit(u_input.b.x));
    var_2 = -_wgslsmith_sub_i32(var_3, var_3);
    var var_4 = -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, var_3, var_3)), -u_input.b), ~select(~vec4<i32>(u_input.b.x, u_input.b.x, var_3, 13997i), _wgslsmith_sub_vec4_i32(vec4<i32>(14689i, 5207i, -1i, 2147483647i), u_input.b), false));
    var var_5 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_1.a)), vec3<f32>(-809f, var_0.a.x, 745f), !vec3<bool>(var_1.b, var_0.b, var_0.b))), false, var_1.c), -1000f), _wgslsmith_f_op_f32(floor(-184f))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 21091u), vec2<bool>(true, var_1.b)), ~vec2<u32>(102149u, 0u)), u_input.a), _wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x) ^ _wgslsmith_mod_u32(u_input.a.x, ~4294967295u)), 4294967295u, ~(-vec3<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b.x), _wgslsmith_sub_i32(-1i, var_3), u_input.b.x)), ~_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_3, u_input.b.x, ~2147483647i), var_3));
}

