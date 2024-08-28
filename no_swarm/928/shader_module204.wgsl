struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = Struct_2(arg_0.a);
    var var_1 = false & !all(vec2<bool>(true, true));
    return Struct_3(-1270f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(select(var_0.a, 466f, all(vec4<bool>(true, false, false, false))))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_u32((_wgslsmith_clamp_u32(0u, arg_1, 17911u) << (min(arg_1, 54194u) % 32u)) | (u_input.d.x >> (arg_1 % 32u)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(56904u, 111831u, arg_1, 1u), u_input.d) & ~77400u)) >> (_wgslsmith_mult_u32(u_input.c, u_input.d.x) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1796f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f * 838f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-419f, -407f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    let var_2 = _wgslsmith_dot_vec3_u32(u_input.d.wzw | u_input.d.zxy, firstLeadingBit(~u_input.d.wwz));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), true))) - var_1.x);
    let var_4 = ~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(116911u, var_2, 55024u, u_input.d.x), _wgslsmith_div_vec4_u32(u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, arg_1, 1u, 1u), u_input.d)), u_input.d >> (u_input.d % vec4<u32>(32u)), true);
    return vec4<i32>(firstTrailingBit(26902i), -(firstTrailingBit(-u_input.b) | 15785i), arg_0, max(_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_clamp_i32(-50742i, u_input.a, arg_0) << (38891u % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2443f, -1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-886f, -1230f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(580f, -1208f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-934f, -598f), vec2<f32>(450f, -1791f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(587f, 1000f))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_2 = !(!(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_2.a, arg_0.x, arg_2.a, true), arg_2.a))));
    var var_3 = Struct_3(true);
    var var_4 = !vec4<bool>(any(!vec4<bool>(true, false, var_2, var_2)), true, !var_2, false);
    return -arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> bool {
    var var_0 = Struct_3(true);
    var var_1 = arg_0;
    let var_2 = Struct_2(343f);
    let var_3 = var_0.a;
    let var_4 = vec3<u32>(u_input.d.x, 32338u, 1u);
    return any(select(vec2<bool>(arg_1.x, var_0.a), vec2<bool>(true, arg_2.x), vec2<bool>(arg_1.x, any(vec3<bool>(true, arg_3.a, arg_1.x)) == true)));
}

fn func_1() -> bool {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(678f, 607f))));
    let var_2 = Struct_2(-272f);
    let var_3 = 1010f;
    var var_4 = func_2(var_1);
    return func_5(_wgslsmith_div_vec4_i32(func_4(!var_0.wxw, func_3(u_input.b >> (u_input.d.x % 32u), 4294967295u), Struct_3(any(var_0)), ~vec3<u32>(u_input.c, u_input.d.x, u_input.d.x)), -vec4<i32>(-u_input.b, -u_input.a, func_4(vec3<bool>(var_4.a, true, true), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), Struct_3(true), vec3<u32>(u_input.c, u_input.c, 0u)).x, u_input.a)), var_0, select(vec2<bool>(var_4.a, any(!var_0.yzx)), select(!var_0.xz, var_0.wz, !var_0.xz), var_4.a), Struct_3(!(!var_4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-566f))));
    var_0 = max(52465i, min(~2147483647i, _wgslsmith_div_i32(~u_input.b, u_input.b)) & ~(-(u_input.a >> (4294967295u % 32u))));
    var var_2 = vec4<bool>(func_1(), all(select(vec3<bool>(true, 825i == u_input.a, false), vec3<bool>(true, any(vec2<bool>(true, true)), true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) - _wgslsmith_f_op_f32(max(657f, -2463f)))) == -408f, func_5(vec4<i32>(u_input.a, func_3(max(1i, u_input.b), firstTrailingBit(631u)).x, u_input.b, 0i), vec4<bool>(true, true, true, true), vec2<bool>(u_input.c <= 1u, true), func_2(Struct_2(_wgslsmith_f_op_f32(-1398f + 506f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(368f, -151f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(select(-567f, var_1.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(646f - -723f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a - -1000f), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, 779f)) + _wgslsmith_f_op_f32(exp2(var_1.a))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_1.a - var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.d.x ^ 1u, u_input.d.x), 58738u);
}

