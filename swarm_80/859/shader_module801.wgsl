struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_i32(-(arg_1.b << (14118u % 32u)), arg_0);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1336f, _wgslsmith_f_op_f32(round(267f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1133f, arg_2.c.x), 1000f, any(vec2<bool>(false, true)))))), -u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_2.c.x, -1000f))), 772f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, 1148f, _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x * 523f) + _wgslsmith_f_op_f32(f32(-1f) * -2270f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(-243f))))));
    let var_3 = var_1.b;
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(241f, arg_2.a)))))) * arg_1.c);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = ~(~abs(_wgslsmith_mod_u32(~49035u, ~47806u)));
    var var_1 = Struct_1(1000f, u_input.b.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))), 354f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, 856f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-2147483647i, Struct_1(arg_0.x, 24413i, arg_0), Struct_1(760f, u_input.b.x, arg_0))) * vec2<f32>(arg_0.x, arg_0.x)))));
    let var_2 = _wgslsmith_div_vec4_u32(firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(53097u, 96461u, 0u, 30006u), vec4<u32>(1u, 1u, 55032u, 4294967295u))))), vec4<u32>(min(~1u, 40232u), abs(firstLeadingBit(1u)), firstTrailingBit(9572u) & _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), firstLeadingBit(vec2<u32>(4294967295u, 75984u))), 36052u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1826f - _wgslsmith_f_op_f32(878f - 1035f)) + 355f))), 62457i & (firstLeadingBit(u_input.a.x) ^ u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.c - var_1.c)))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(arg_0.x * var_1.a), _wgslsmith_add_i32(var_3.b, -19027i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_3.c - vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(abs(var_1.c.x)))))));
    return false;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    let var_0 = (all(vec4<bool>(true, true, true, true)) && (!func_2(vec2<f32>(733f, -929f)) | any(vec2<bool>(false, false)))) && true;
    var var_1 = Struct_1(821f, arg_0, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1528f, 192f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(117f, -858f)))))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(203f, 1f)), arg_1.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_div_f32(830f, var_1.c.x)))));
    return countOneBits(~(-min(arg_1.x, arg_0))) | arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_mod_i32(-62559i, -33952i), -func_1(~u_input.a.x, select(u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), vec3<i32>(u_input.a.x, 23112i, u_input.b.x)), vec3<bool>(true, true, true)), ~44219u), u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-132f, -244f) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1362f, -2201f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1351f, 412f))))));
    var var_2 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(0u, ~min(22510u, 17184u))), vec2<u32>(~(~countOneBits(40704u)), ~_wgslsmith_sub_u32(~4294967295u, abs(0u))));
    let var_3 = func_1(_wgslsmith_dot_vec2_i32(~(~(-vec2<i32>(2147483647i, var_0.x))), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-24074i, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_div_i32(var_0.x, 22080i))), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2584i, u_input.a.x), firstTrailingBit(vec3<i32>(var_0.x, u_input.a.x, u_input.a.x)))), select(u_input.a, -(vec3<i32>(var_0.x, u_input.a.x, 2147483647i) | u_input.b), any(vec3<bool>(false, true, false)))), ~var_2.x);
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-616f))))), var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 * var_1)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(391f, 1115f)))), var_1));
    var_2 = ~select(vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, var_2.x, var_2.x)), ~vec3<u32>(var_2.x, var_2.x, 4294967295u)), var_2.x), select(min(vec2<u32>(1u, var_2.x) << (vec2<u32>(22664u, var_2.x) % vec2<u32>(32u)), abs(vec2<u32>(var_2.x, var_2.x))), abs(min(vec2<u32>(0u, var_2.x), vec2<u32>(var_2.x, var_2.x))), true), abs(35354i) == -u_input.a.x);
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x, 2147483647i, 71103i), abs(u_input.b >> (vec3<u32>(var_2.x, var_2.x, 27783u) % vec3<u32>(32u)))), -u_input.a), _wgslsmith_sub_i32(1i, func_1(var_0.x, u_input.b, var_2.x)), i32(-1i) * -12323i);
    let var_5 = true;
    var_2 = firstTrailingBit(~countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, var_2.x) >> (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)), ~vec2<u32>(70950u, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<i32>(u_input.a.x ^ 39156i, ~(-40935i))), ~(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 53003u, var_2.x), vec3<u32>(0u, var_2.x, 4294967295u)), var_2.x, var_2.x, ~1u) ^ abs(vec4<u32>(var_2.x, 4294967295u, var_2.x, 4294967295u))), vec3<u32>(1u, var_2.x, _wgslsmith_div_u32(~1u, 22253u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, -1000f, 592f), vec3<f32>(var_1.x, 1016f, 1502f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1646f, var_1.x, var_4.x), vec3<f32>(var_4.x, var_1.x, var_4.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f)), var_4.x, _wgslsmith_f_op_f32(abs(var_4.x))))));
}

