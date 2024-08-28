struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    let var_0 = !select(select(true, all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true))), false, all(vec2<bool>(true, true)));
    let var_1 = var_0 && (abs(48337u) != firstTrailingBit(reverseBits(4294967295u)));
    return _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(abs(vec3<i32>(2147483647i, 2147483647i, 2942i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(-30520i, u_input.a, -1i)))) | _wgslsmith_div_vec3_i32(min(vec3<i32>(11874i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)) << (~vec3<u32>(4294967295u, 0u, 19585u) % vec3<u32>(32u)), ~(~vec3<i32>(1i, u_input.a, u_input.a))), firstLeadingBit(vec3<i32>(~(-u_input.a), 13241i, 34781i)));
}

fn func_2() -> f32 {
    let var_0 = Struct_3((abs(-vec3<i32>(u_input.a, -1i, u_input.a)) & vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -30376i), vec3<i32>(-1i, -1i, u_input.a)), u_input.a | 22143i, ~u_input.a)) | _wgslsmith_mult_vec3_i32(select(countOneBits(vec3<i32>(-1i, u_input.a, u_input.a)), func_3(), false), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(-20749i, u_input.a, u_input.a))), firstTrailingBit(-4329i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1159f, -1000f, 544f, -860f))), vec4<f32>(-140f, 1813f, -1293f, -315f)))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2535f), -266f, _wgslsmith_f_op_f32(ceil(var_0.c.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1698f, var_0.c.x, 1103f)) - _wgslsmith_f_op_vec4_f32(max(var_0.c, var_0.c)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1786f, -373f, var_1.x), vec4<f32>(-886f, var_1.x, var_1.x, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x, _wgslsmith_f_op_f32(select(-567f, 907f, false)), _wgslsmith_f_op_f32(select(1821f, -1431f, true))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.ywy)))) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x))))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1384f, var_1.x, var_1.x, var_1.x))))), vec4<f32>(-979f, -296f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -649f), 146f < _wgslsmith_f_op_f32(ceil(var_0.c.x)))), var_2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(min(1463f, _wgslsmith_f_op_f32(floor(var_1.x))))) * var_2.x));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f - -1598f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))))));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(arg_1.x);
    var var_1 = Struct_2(Struct_1(884f), _wgslsmith_dot_vec3_i32(~firstLeadingBit(vec3<i32>(-1i, 2147483647i, arg_0)), ~vec3<i32>(-1i << (arg_2.x % 32u), u_input.a, select(u_input.a, u_input.a, false))));
    var var_2 = Struct_3(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.a, -31966i, 250i)), ~vec3<i32>(-1i, 36972i, u_input.a)), -vec3<i32>(0i, 37919i, var_1.b)) & min(func_3(), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(arg_0, u_input.a, arg_0))), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.a.a)))))), arg_1.x, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, 1387f, true)) + _wgslsmith_f_op_f32(floor(arg_1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -105f))));
    return !(arg_2.x <= (40011u & arg_2.x)) | false;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, arg_2, 143f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1032f, 782f, arg_2) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_2, -120f), vec3<f32>(arg_3.a, arg_2, 824f)))) + vec3<f32>(arg_1, _wgslsmith_div_f32(710f, arg_3.a), arg_3.a))));
    let var_1 = arg_0.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1(18903i, vec2<f32>(672f, -1000f), vec4<u32>(13587u, 4294967295u, 1u, 1u))), vec4<bool>((u_input.a ^ u_input.a) <= -1i, any(vec2<bool>(false, true)) | true, any(vec2<bool>(true, true)), true), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-962f * _wgslsmith_f_op_f32(floor(-252f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1060f * 1000f))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-807f))), _wgslsmith_f_op_f32(f32(-1f) * -347f)))));
    let var_1 = ~select(~80990u, abs(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16654u, 4294967295u), vec3<u32>(108394u, 0u, 1u)))), !all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1, var_1, 0u, var_1), ~vec4<u32>(11355u, 21397u, 4294967295u, var_1), vec4<u32>(var_1, var_1, var_1, var_1) & vec4<u32>(43121u, 65634u, 4294967295u, var_1)) | firstTrailingBit(vec4<u32>(var_1, 1u, 33718u, 4294967295u) & vec4<u32>(var_1, var_1, 18367u, var_1))) & vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 35018u), ~4294967295u), (var_1 | var_1) >> (_wgslsmith_add_u32(4294967295u, var_1) % 32u), var_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1040f * var_0.a))), var_0.a, var_0.a), var_0.a);
}

