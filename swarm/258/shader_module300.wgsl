struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = 21842u;
    var var_1 = 4294967295u;
    let var_2 = !all(vec2<bool>(select(false, all(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, true))), true));
    var_1 = u_input.b;
    var_1 = 28514u;
    return -1169f;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> vec4<u32> {
    var var_0 = arg_0.xy;
    var_0 = ~(~abs(vec2<u32>(4294967295u, select(var_0.x, u_input.b, false))));
    var var_1 = !(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), false)));
    var_0 = arg_0.zx;
    var var_2 = Struct_1(abs(arg_0), -1224f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-657f * 619f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(3739u, 74451u))) - _wgslsmith_f_op_f32(max(249f, -1296f))))))), _wgslsmith_f_op_f32(min(-525f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(783f))))))));
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = Struct_1(firstLeadingBit(reverseBits(func_2(firstTrailingBit(vec4<u32>(u_input.b, 11712u, u_input.b, 47719u)), countOneBits(u_input.b)))), -821f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(1331f * -297f)))))), _wgslsmith_f_op_f32(step(-135f, arg_0)));
    var var_1 = -2147483647i;
    var var_2 = -vec4<i32>(1i, -2147483647i, _wgslsmith_div_i32(-17861i, arg_1.b.x), countOneBits(_wgslsmith_div_i32(firstTrailingBit(-2147483647i), 0i)));
    let var_3 = vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1357f))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(step(1249f, -1226f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_3.xw * vec2<f32>(var_0.c, 1344f)), _wgslsmith_f_op_vec2_f32(select(var_3.wx, var_3.wy, true)))))), !vec2<bool>(false, arg_1.b.x >= 1i))));
    return arg_1.b.x >> (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-15386i, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-279f, _wgslsmith_div_f32(-1347f, 894f)))), Struct_3(~u_input.a, ~(~vec3<i32>(2147483647i, u_input.a, -2147483647i))), ~(-1i)), select(reverseBits(~32056i), _wgslsmith_mult_i32(firstTrailingBit(26381i) << (~0u % 32u), min(-24650i ^ u_input.a, abs(u_input.a))), true), ~reverseBits(-2147483647i));
    let var_1 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_div_i32(-(i32(-1i) * -1i), min(u_input.a, -1i << (1u % 32u))), 30675i), _wgslsmith_div_vec3_i32(var_0.zwz, -_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.a, -2147483647i, var_0.x), var_0.wyx, false), vec3<i32>(-15479i, 30219i, -63634i))));
    var_0 = max(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(62965i, var_0.x, var_0.x, var_1.a), ~vec4<i32>(-39294i, u_input.a, u_input.a, var_1.b.x), vec4<i32>(var_1.b.x, var_0.x, u_input.a, u_input.a)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -1i, u_input.a) << (vec4<u32>(0u, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_1.a, u_input.a, 38735i), vec4<i32>(var_0.x, -42108i, var_0.x, 1i)))), ~vec4<i32>(-var_0.x >> (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u), -1i, max(1i, 1i) & var_0.x, ~u_input.a));
    var_0 = vec4<i32>(i32(-1i) * -(~(~(-530i))), 0i, ~u_input.a, ~var_1.b.x);
    var var_2 = _wgslsmith_f_op_f32(-1466f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1542f + -362f) + -272f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-537f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3193f) - -2681f)))));
    var_0 = _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(firstLeadingBit(2147483647i), firstTrailingBit(var_1.b.x), abs(2147483647i) << (u_input.b % 32u), 34675i)), reverseBits(vec4<i32>(-2147483647i, u_input.a << (min(u_input.b, 1u) % 32u), _wgslsmith_clamp_i32(1i, u_input.a, -6197i), -2147483647i)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(564f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-781f, 642f)), _wgslsmith_f_op_f32(trunc(-537f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1143f, 467f)))))));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, 377f, -717f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1483f, 206f, -807f), vec3<f32>(1000f, 881f, -806f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -426f, _wgslsmith_f_op_f32(1006f + -1000f)))), -49504i);
}

