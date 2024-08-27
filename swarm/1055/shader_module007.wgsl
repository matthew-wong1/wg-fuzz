struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-11885i, 1i), -2147483647i);
    return _wgslsmith_f_op_f32(max(-1455f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-232f)), -301f))))));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -705f), _wgslsmith_f_op_f32(f32(-1f) * -184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2272f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f), -1288f)));
    var var_1 = Struct_1(~arg_0.x, ~abs(13175u), _wgslsmith_div_i32(firstLeadingBit(abs(~(-9503i))), ~1i));
    return 812i;
}

fn func_1() -> vec4<i32> {
    let var_0 = ~(-vec2<i32>(func_2(vec3<u32>(u_input.a, u_input.a, 0u)), ~1i)) | ~vec2<i32>(1i, i32(-1i) * -2147483647i);
    var var_1 = Struct_1(2296u, ~u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(~2147483647i), firstTrailingBit(-7163i)), 1i, ~(~_wgslsmith_mod_i32(var_0.x, 0i))));
    var_1 = Struct_1(_wgslsmith_mult_u32(~abs(u_input.a), ~firstTrailingBit(1u)), 1u >> (0u % 32u), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.x, var_1.c), ~vec2<i32>(18996i, var_1.c))));
    var_1 = Struct_1(var_1.b, 1u >> (_wgslsmith_sub_u32(~(var_1.b >> (1u % 32u)), abs(_wgslsmith_mult_u32(var_1.a, var_1.b))) % 32u), func_2(firstLeadingBit(vec3<u32>(var_1.a, 6483u, var_1.a))) | var_1.c);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 1777f);
    return vec4<i32>(~(-18466i), 1i, var_0.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-_wgslsmith_sub_vec4_i32(func_1(), vec4<i32>(1i, 1i, 1i, 1i))));
    var_0 = vec4<i32>(-1i, var_0.x, var_0.x, 58196i);
    var_0 = vec4<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), countOneBits(firstTrailingBit(1i)), _wgslsmith_add_i32(~1i, 0i), 46496i);
    var_0 = vec4<i32>(i32(-1i) * -20454i, 1i, var_0.x, func_2(~(~(~vec3<u32>(u_input.a, 0u, u_input.a)))));
    var var_1 = var_0.x;
    var var_2 = -vec2<i32>(_wgslsmith_add_i32(-(-6843i ^ var_0.x), -1i), var_0.x);
    var var_3 = Struct_1(~u_input.a, 0u, -(~0i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.b), func_1().x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1427f * 362f) - _wgslsmith_f_op_f32(f32(-1f) * -687f))))));
}

