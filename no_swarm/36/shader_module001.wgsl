struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = ~arg_0.x;
    let var_1 = u_input.e;
    var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1, arg_1), _wgslsmith_mod_u32(arg_1, 1u) | ~4294967295u);
    var_0 = 1u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(435f, _wgslsmith_f_op_f32(299f - 738f), _wgslsmith_f_op_f32(f32(-1f) * -1500f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-404f, -833f, -1067f) + vec3<f32>(1904f, -666f, 1232f)))), vec3<f32>(_wgslsmith_f_op_f32(-958f + _wgslsmith_f_op_f32(f32(-1f) * -853f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(910f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-643f * -1424f))))));
    return Struct_1(abs(58297i));
}

fn func_1(arg_0: u32) -> Struct_1 {
    return func_2(firstLeadingBit(vec4<u32>(countOneBits(arg_0) & ~arg_0, 38221u, u_input.c, ~17133u | _wgslsmith_sub_u32(arg_0, 21240u))), ~reverseBits(arg_0));
}

fn func_3() -> i32 {
    let var_0 = ~(~(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.d.x, 26622i), vec3<i32>(1i, u_input.d.x, -33334i)))));
    var var_1 = func_1(44381u);
    var_1 = Struct_1(u_input.d.x);
    var var_2 = -1925f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1235f + -633f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(575f, -539f), -124f)), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(407f, 914f)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(abs(-404f))))))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(281f + 1000f);
    let var_2 = ~vec3<i32>(~abs(u_input.d.x), func_3(), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, u_input.b)), vec3<u32>(0u, u_input.c, 0u))), firstTrailingBit(select(vec3<u32>(u_input.b, u_input.b, 29742u), ~vec3<u32>(u_input.c, 1u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), false), _wgslsmith_add_i32(-1i, ~reverseBits(~var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, var_1, 336f, -1485f), vec4<f32>(var_1, var_1, -1188f, var_1), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1035f, var_1, 1267f, 1501f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(678f)), 294f, 1350f, _wgslsmith_f_op_f32(f32(-1f) * -359f))), -abs(_wgslsmith_clamp_vec3_i32(var_2, var_2, var_2)) & vec3<i32>(abs(~(-1i)), 31439i, _wgslsmith_clamp_i32(-var_0.a, 1i, u_input.d.x)));
}

