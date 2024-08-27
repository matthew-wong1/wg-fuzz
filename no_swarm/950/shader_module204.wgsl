struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = var_0;
    return Struct_1(u_input.a, !(!(!vec3<bool>(var_1, var_1, var_0))), var_0, !(!vec4<bool>(true, true, arg_2, true)));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xw));
    return func_2(arg_0.wwz, vec2<u32>(53515u >> ((abs(u_input.a) | 1u) % 32u), u_input.a & ~45592u), !arg_1, vec2<i32>(0i, -14549i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(92663u, 23363u, arg_0.x) % vec3<u32>(32u)), firstLeadingBit(min(vec3<i32>(2147483647i, -15340i, -16679i), vec3<i32>(-2147483647i, -1i, -47606i)))), -_wgslsmith_add_vec3_i32(~vec3<i32>(1i, -2147483647i, -41664i), vec3<i32>(-1i, 0i, 1i))), vec3<i32>(21827i, i32(-1i) * -1i, i32(-1i) * -1i));
    var var_1 = arg_1.x;
    var_1 = -911f;
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, i32(-1i) * -1i, i32(-1i) * -1i, countOneBits(var_0.x)), _wgslsmith_add_vec4_i32(select(vec4<i32>(2147483647i, _wgslsmith_clamp_i32(var_0.x, 0i, 35078i), _wgslsmith_div_i32(var_0.x, -2147483647i), abs(var_0.x)), -reverseBits(vec4<i32>(1i, 0i, -1841i, -1i)), vec4<bool>(any(arg_2.d), true || arg_2.b.x, 2147483647i >= var_0.x, true)), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_0.x, 0i, var_0.x, -7861i)), vec4<i32>(min(-1i, var_0.x), var_0.x, 0i, _wgslsmith_clamp_i32(var_0.x, 3484i, 32447i)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + 1000f), _wgslsmith_f_op_f32(-arg_1.x), -1463f, _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2319f + arg_1.x) + arg_1.x)))));
    return !arg_2.d.ww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(any(func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 43921u), vec2<u32>(0u, 70638u), vec2<u32>(0u, 73030u)), vec4<f32>(1400f, -472f, -1880f, -1000f), func_1(vec4<f32>(-162f, -465f, 1058f, 2201f), false, -2147483647i))), true, !(!any(vec2<bool>(true, true))), true);
    var var_1 = reverseBits(u_input.a);
    var_1 = u_input.a;
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-589f, -1000f, 112f, 1117f))))))), false, 1i).c;
    var var_3 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_add_u32(~u_input.a, ~3375u)), var_0.wzy, true, vec4<bool>(any(select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, true, var_2, false), false)), any(func_2(vec3<f32>(401f, -973f, 1000f), vec2<u32>(44772u, 4294967295u), var_2, vec2<i32>(-1801i, 2147483647i)).d.xxx), true, var_2)));
    var var_4 = true;
    let var_5 = _wgslsmith_dot_vec4_u32(~(~(~abs(vec4<u32>(1u, 2317u, 0u, u_input.a)))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_3.a.a, u_input.a), vec3<u32>(22171u, 32687u, 4294967295u)), var_3.a.a), _wgslsmith_mult_u32(4294967295u, firstLeadingBit(var_3.a.a)), var_3.a.a, _wgslsmith_sub_u32(select(0u ^ u_input.a, ~1u, all(var_0.wz)), ~_wgslsmith_mod_u32(4294967295u, u_input.a))));
    var var_6 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-499f - 521f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 508f, _wgslsmith_f_op_f32(1f + 1072f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1015f, 516f, -497f, -273f) + vec4<f32>(-1000f, -149f, 1195f, 413f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1537f, -1036f, -134f, -1243f), vec4<f32>(-263f, 614f, 777f, 1200f)))))), var_0.x || func_3(max(firstLeadingBit(vec2<u32>(var_3.a.a, 0u)), abs(vec2<u32>(var_3.a.a, var_5))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1036f, 1000f, -350f, -1798f)))), func_2(vec3<f32>(-587f, -1000f, 639f), vec2<u32>(0u, 0u) << (vec2<u32>(var_3.a.a, 0u) % vec2<u32>(32u)), true, -vec2<i32>(-2147483647i, -7111i))).x, -30531i >> (_wgslsmith_mult_u32(var_3.a.a, ~min(0u, var_5)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_add_u32(abs(u_input.a), 817u), ~25835u, _wgslsmith_add_u32(var_5, min(var_6.a, ~5421u)), 1u), -1013f, vec4<i32>(~_wgslsmith_div_i32(~0i, ~0i), 1i, -8014i, 1i));
}

