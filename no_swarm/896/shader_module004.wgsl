struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_1(-670f, vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), -386f, ~(~(arg_0 ^ ~arg_0)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.a, var_0.a) - vec3<f32>(-644f, 219f, var_1.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -1000f, var_1.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, 859f, -320f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -486f, var_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 1202f, 627f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 1184f, var_1.a) - vec3<f32>(-732f, var_1.a, -935f)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2799f, var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, -1087f))), var_1.a), vec3<f32>(_wgslsmith_f_op_f32(var_0.a + var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1050f)) * _wgslsmith_f_op_f32(var_0.c - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    var var_3 = max(select(vec2<u32>(var_1.d, 4294967295u), vec2<u32>(arg_0, firstLeadingBit(u_input.c & 17221u)), !(!(!var_1.b.x))), abs(abs(countOneBits(vec2<u32>(16593u, u_input.c)))));
    return select(vec3<bool>(4294967295u == var_1.d, true, false), var_0.b, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(865f, 1252f)) >= 872f);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    let var_0 = any(select(vec2<bool>(any(select(arg_2.b.yz, arg_2.b.xz, false)), true), vec2<bool>(any(vec3<bool>(arg_1.b.x, false, arg_2.b.x)), !arg_1.b.x), !(select(true, arg_2.b.x, arg_2.b.x) & arg_1.b.x)));
    var var_1 = vec2<f32>(arg_1.c, 1759f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f))), !func_3(_wgslsmith_dot_vec2_u32(arg_3.xx, _wgslsmith_clamp_vec2_u32(arg_3.xy, arg_3.yx, arg_3.zx))), _wgslsmith_f_op_f32(-arg_0), arg_1.d);
    var_1 = vec2<f32>(-703f, arg_1.a);
    var_2 = arg_2;
    return _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a))));
}

fn func_1() -> Struct_1 {
    var var_0 = true | any(!vec2<bool>(true, u_input.d != 22965i));
    var var_1 = vec4<bool>(true, all(vec4<bool>(true, true, true, _wgslsmith_f_op_f32(func_2(1291f, Struct_1(-283f, vec3<bool>(false, true, false), -595f, 59000u), Struct_1(1123f, vec3<bool>(false, false, true), -310f, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.b))) <= 390f)), false, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-147f, -147f)))) * _wgslsmith_f_op_f32(f32(-1f) * -2145f)));
    let var_3 = !select(func_3(~_wgslsmith_div_u32(1u, u_input.b)).yx, var_1.zz, var_1.x);
    var var_4 = ~(~u_input.a.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-123f)) * -335f))), select(vec3<bool>(var_3.x, false, true & (var_3.x || var_3.x)), var_1.yww, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1000f, Struct_1(640f, vec3<bool>(false, false, false), 651f, u_input.b), Struct_1(-848f, vec3<bool>(var_3.x, false, false), 280f, 4294967295u), vec3<u32>(1u, u_input.c, u_input.c)))), 275f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2459f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f) + _wgslsmith_f_op_f32(1607f - -2249f)))), firstTrailingBit(u_input.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(449f + arg_2.c), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1164f, _wgslsmith_f_op_f32(round(arg_2.a))), _wgslsmith_f_op_f32(arg_0.a + -1642f)), 1040f), arg_0.c, arg_2.a);
    let var_1 = Struct_1(-1808f, arg_2.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f - -753f) - arg_2.a), 2041f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1156f, _wgslsmith_f_op_f32(-1070f - arg_2.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_sub_u32(arg_2.d, 1u >> (arg_2.d % 32u)));
    let var_2 = countOneBits(vec4<u32>(select(31027u, ~1u, func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, arg_2.d, 1u, arg_0.d), vec4<u32>(1u, 1u, 40721u, 35627u))).x), func_1().d, arg_2.d, 1u));
    let var_3 = var_2;
    var var_4 = Struct_1(var_0.x, arg_2.b, 234f, ~42024u);
    return var_2.wzw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1223f - 1000f))), 316f)));
    var var_1 = Struct_1(-568f, !select(vec3<bool>(false, all(vec4<bool>(false, true, false, false)), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), any(vec2<bool>(false, true)) | true), var_0, select(u_input.c, u_input.b, true));
    var_1 = Struct_1(var_0, vec3<bool>(true, false, true), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-363f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-314f)), _wgslsmith_f_op_f32(-182f - var_0))), !var_1.b.x)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_1.d, var_1.d) & vec3<u32>(25735u, var_1.d, 22974u), ~vec3<u32>(14330u, 83098u, 4294967295u))));
    let var_2 = Struct_1(var_0, !var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) - _wgslsmith_f_op_f32(-1324f - -919f)))), var_1.d);
    let var_3 = -(_wgslsmith_mult_vec3_i32(vec3<i32>(-21222i, -16028i, u_input.d) | vec3<i32>(-2147483647i, u_input.d, 4874i), ~vec3<i32>(-2147483647i, 0i, u_input.a.x)) >> (func_4(var_2, var_1.b, func_1()) % vec3<u32>(32u))) ^ vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -1i), vec3<i32>(14801i, u_input.a.x, u_input.d))) << (151103u % 32u), reverseBits(~(~u_input.a.x)), u_input.a.x);
    let var_4 = func_1();
    let var_5 = var_2;
    var var_6 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec3<u32>(~var_4.d, 1u, ~54914u)), var_2.c, abs(~var_4.d));
}

