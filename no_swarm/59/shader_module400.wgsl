struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1299u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    global0 = 1u;
    let var_0 = arg_2.a;
    global0 = ~arg_0;
    let var_1 = ~min(~firstTrailingBit(abs(vec3<u32>(arg_0, 30486u, u_input.c))), vec3<u32>(~arg_0, ~_wgslsmith_mod_u32(13350u, 67314u), arg_0));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))));
    return arg_2.b;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = 733f;
    let var_1 = u_input.b;
    global0 = arg_1.a.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1357f, 502f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1947f, arg_0.x) - _wgslsmith_f_op_vec2_f32(-arg_0.zz))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(arg_0.x + -360f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(404f + arg_0.x) * _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) + vec2<f32>(arg_0.x, 1893f)), vec2<f32>(_wgslsmith_f_op_f32(floor(2135f)), -1329f))));
    var var_3 = vec4<i32>(-6102i, arg_1.b, -10022i, -32324i);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), -1582f))) - arg_0.x), -1370f);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1561f, 670f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1309f, 296f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-360f, 2016f)))), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(519f, 226f, 216f) - vec3<f32>(1153f, 708f, -559f)), Struct_3(Struct_1(u_input.b.x, vec2<u32>(u_input.c, 7798u)), ~8510i, Struct_2(-35220i, true), Struct_1(u_input.b.x, u_input.a))))))));
    var var_1 = -1i;
    let var_2 = vec4<bool>(all(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), select(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)), true))), (!all(vec4<bool>(true, false, false, false)) || (-368f <= _wgslsmith_f_op_f32(floor(var_0.x)))) & (_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x) > 1936i), any(vec4<bool>(true, !any(vec2<bool>(false, true)), true, func_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 102f))), Struct_2(1i, true)))), ~_wgslsmith_mult_u32(u_input.a.x, 22594u) < 4294967295u);
    let var_3 = ~(~(0u << (~reverseBits(u_input.a.x) % 32u)));
    return 1823f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~20342u, ~u_input.c), ~(~(max(u_input.a.x, u_input.a.x) << (abs(u_input.c) % 32u))));
    global0 = u_input.a.x;
    let var_0 = Struct_2(u_input.b.x, true);
    global0 = 27946u;
    var var_1 = any(!vec3<bool>(true, func_1(_wgslsmith_add_u32(u_input.c, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, 501f) - vec2<f32>(-1000f, -1864f)), var_0), var_0.b & true));
    var var_2 = Struct_1(_wgslsmith_clamp_i32(abs(0i), _wgslsmith_sub_i32(_wgslsmith_div_i32(14336i << (1u % 32u), 2147483647i), abs(~(-1i))), 1i), vec2<u32>(u_input.a.x ^ reverseBits(u_input.a.x), 1u << (u_input.a.x % 32u)));
    let var_3 = _wgslsmith_add_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b.x, -2147483647i, u_input.b.x) ^ vec4<i32>(u_input.b.x, -6284i, var_2.a, 2147483647i), vec4<i32>(u_input.b.x, -2147483647i, var_2.a, 1i) ^ vec4<i32>(u_input.b.x, var_2.a, -30897i, 2147483647i)), 1i, all(select(vec4<bool>(false, var_0.b, true, false), vec4<bool>(var_0.b, var_0.b, true, var_0.b), var_0.b))), -7962i) >= ~_wgslsmith_div_i32(-37023i, i32(-1i) * -28898i);
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-534f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-271f)) + _wgslsmith_f_op_f32(step(-944f, 1246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-881f - -538f), _wgslsmith_f_op_f32(func_2(var_2.b.x))))), _wgslsmith_f_op_f32(425f - _wgslsmith_f_op_f32(-860f + _wgslsmith_f_op_f32(-168f * 685f)))), -1i, var_2.b.x, ~(~min(var_0.a, 0i & u_input.b.x)));
}

