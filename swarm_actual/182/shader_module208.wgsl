struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_3.b.x)), arg_3.b.x, arg_3.e)))), 318f);
    let var_1 = ~arg_3.a;
    let var_2 = Struct_2(vec4<u32>(0u, arg_0.x, ~arg_0.x, 0u), Struct_1(var_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(arg_3.b.x, arg_3.d.x), _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.x, -771f) * arg_3.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_3.d.x) * arg_3.b)), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(265f, arg_3.b.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(460f * arg_3.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(arg_3.d))))), arg_0.x >= arg_0.x), arg_0, 1072f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(174f, var_2.d)), 1f)), arg_3.b.x), _wgslsmith_f_op_f32(-2705f + var_2.b.c.x))));
    var var_4 = var_2.b;
    return select(~(~(-(~9717i))), -var_1, true);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_3;
    var var_1 = min(func_3(~vec4<u32>(arg_3.c.x | arg_3.a.x, 1u, var_0.c.x, arg_0.a.x), var_0.b.e, arg_0.b.e, var_0.b), reverseBits(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(1i, arg_1.x, arg_3.b.a, 2147483647i), vec4<i32>(u_input.b, -20405i, arg_3.b.a, -2147483647i), vec4<bool>(arg_3.b.e, arg_2.x, var_0.b.e, true)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 5636i, u_input.b, arg_3.b.a), vec4<i32>(-51604i, arg_3.b.a, arg_3.b.a, arg_1.x)), vec4<i32>(0i, 27093i, 1i, -1i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2045f, -263f, -178f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1166f, arg_0.b.c.x, arg_0.d), vec3<f32>(arg_3.b.d.x, -1576f, arg_0.b.b.x))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_3.d), _wgslsmith_f_op_f32(sign(-231f))))));
    var var_3 = 0u;
    var_1 = -2147483647i;
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = 0u;
    let var_1 = arg_0.d.x;
    let var_2 = _wgslsmith_div_i32(u_input.a, -1i);
    var var_3 = max((vec3<u32>(_wgslsmith_sub_u32(var_0, 8075u), ~0u, ~37145u) ^ ~countOneBits(vec3<u32>(var_0, var_0, var_0))) ^ select(~(vec3<u32>(31373u, var_0, var_0) >> (vec3<u32>(var_0, 39479u, 4294967295u) % vec3<u32>(32u))), firstLeadingBit(~vec3<u32>(var_0, var_0, 7493u)), select(func_2(Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_0), arg_0, vec4<u32>(50663u, var_0, var_0, var_0), var_1), vec3<i32>(u_input.b, 0i, var_2), vec3<bool>(arg_0.e, false, true), Struct_2(vec4<u32>(4294967295u, 5080u, var_0, var_0), arg_0, vec4<u32>(4294967295u, var_0, 4294967295u, var_0), var_1)), select(vec3<bool>(arg_0.e, arg_0.e, false), vec3<bool>(arg_0.e, arg_0.e, true), arg_0.e), !vec3<bool>(arg_0.e, false, false))), vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4657u, 54692u, var_0), vec4<u32>(var_0, var_0, var_0, var_0))), abs(4294967295u), 16142u));
    var var_4 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_0, _wgslsmith_div_u32(var_3.x, 50114u)), 1u & _wgslsmith_sub_u32(var_0, 4294967295u), ~reverseBits(var_3.x), 1u), vec4<u32>(1u, var_3.x, var_0, _wgslsmith_mod_u32(var_0, var_0)) | ~vec4<u32>(4294967295u, var_3.x, var_0, var_3.x)), arg_0, _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(var_0), 0u, firstLeadingBit(58700u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, var_3.x, var_3.x), vec3<u32>(var_3.x, var_0, var_0))), firstLeadingBit(vec4<u32>(1u, 27637u, 0u, 0u))) & vec4<u32>(0u | var_3.x, max(1u, var_3.x) << (firstLeadingBit(1u) % 32u), var_0, ~abs(1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)));
    return Struct_2(~vec4<u32>(50118u, 1u, max(12594u, ~var_4.c.x), var_3.x), Struct_1(select(abs(arg_0.a), ~5891i, true != arg_0.e) & (~u_input.b ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-22635i, u_input.b), vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, var_4.b.b.x)))))), vec2<f32>(var_4.d, -1925f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 979f)))), false), _wgslsmith_clamp_vec4_u32(vec4<u32>(~var_0, min(firstLeadingBit(var_3.x), ~1u), var_0 | var_4.a.x, select(var_0, min(var_3.x, 4294967295u), any(vec4<bool>(true, false, true, false)))), ~abs(select(vec4<u32>(var_4.a.x, 1u, var_3.x, 11008u), var_4.a, vec4<bool>(arg_0.e, false, false, arg_0.e))), select(var_4.a ^ var_4.a, max(vec4<u32>(0u, 2422u, 68577u, 1u), var_4.c), select(vec4<bool>(true, arg_0.e, var_4.b.e, var_4.b.e), vec4<bool>(var_4.b.e, true, var_4.b.e, var_4.b.e), false)) & reverseBits(min(var_4.c, vec4<u32>(36906u, 0u, var_3.x, 12251u)))), -610f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -202f), -1000f) + 483f) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -420f) + _wgslsmith_f_op_f32(538f - 1711f)))));
    let var_1 = func_1(Struct_1(70692i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, 1040f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(174f, -1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-804f, -450f) + vec2<f32>(-2113f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(562f, 342f) + vec2<f32>(244f, 529f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1719f) * vec2<f32>(2012f, 484f))))), false));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.b.c))) + vec2<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.b.x))))));
    var var_3 = _wgslsmith_dot_vec4_i32(((vec4<i32>(17231i, var_1.b.a, 0i, -1i) | reverseBits(vec4<i32>(-22023i, -1527i, var_1.b.a, 23315i))) | max(vec4<i32>(-56438i, var_1.b.a, 0i, var_1.b.a), -vec4<i32>(1i, u_input.c.x, var_1.b.a, u_input.a))) >> (vec4<u32>(reverseBits(~var_1.a.x), 1u, _wgslsmith_div_u32(var_1.c.x, 61161u), 18301u) % vec4<u32>(32u)), vec4<i32>(14020i ^ _wgslsmith_mult_i32(~0i, firstTrailingBit(1i)), 0i, -var_1.b.a ^ _wgslsmith_mod_i32(1804i, u_input.a), var_1.b.a));
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.b.c.x, var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1029f + 100f) + _wgslsmith_div_f32(var_4.c.x, 266f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1389f, _wgslsmith_f_op_f32(-152f * var_4.d.x), 917f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-598f, var_2.x, 1781f) - vec3<f32>(var_2.x, var_1.b.c.x, 200f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-447f, var_2.x, 1119f)))))));
}

