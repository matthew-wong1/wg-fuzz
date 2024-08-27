struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1487f, vec3<i32>(-2473i, -1i, -1i), -1i, 1i), vec4<bool>(true, true, false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global0.a, global0.b);
    let var_1 = vec4<i32>(global0.a.d, _wgslsmith_dot_vec4_i32(select(abs(firstLeadingBit(vec4<i32>(var_0.a.c, global0.a.c, -55528i, 20671i))), select(~vec4<i32>(var_0.a.c, u_input.c, u_input.d, var_0.a.c), vec4<i32>(39616i, 18647i, var_0.a.c, global0.a.c), 0i != var_0.a.b.x), vec4<bool>(16021u < u_input.e.x, var_0.b.x & global0.b.x, global0.b.x, all(vec3<bool>(false, false, false)))), ~(-vec4<i32>(-16459i, -2147483647i, 267i, 2147483647i)) ^ vec4<i32>(var_0.a.b.x & -19856i, u_input.b.x, max(var_0.a.c, -17377i), -global0.a.b.x)), firstTrailingBit(-2147483647i), var_0.a.c);
    global0 = var_0;
    let var_2 = var_0;
    let var_3 = Struct_1(global0.a.a, -_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global0.a.d, -2147483647i, var_0.a.c), vec3<i32>(-2147483647i, -18226i, -2147483647i)), vec3<i32>(var_2.a.c, var_2.a.c, var_0.a.c)), ((-1i & u_input.d) & 1i) << (26870u % 32u), max(2147483647i, -(i32(-1i) * -global0.a.c)));
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    global0 = func_2();
    var var_0 = false;
    var var_1 = global0.a;
    var var_2 = func_2();
    var var_3 = func_2();
    return _wgslsmith_clamp_i32((var_1.d >> (u_input.a % 32u)) ^ 13068i, i32(-1i) * -firstLeadingBit(var_1.b.x), min(_wgslsmith_mod_i32(var_2.a.b.x, u_input.d), (-var_3.a.d >> (1u % 32u)) >> (u_input.a % 32u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.a;
    var var_1 = all(vec3<bool>(true, !arg_1.b.x, any(arg_1.b.wyx)));
    var_1 = false;
    var_0 = func_2().a;
    var var_2 = _wgslsmith_f_op_f32(259f * _wgslsmith_f_op_f32(-arg_3.a.a));
    return arg_1.a.c;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec2<i32> {
    global0 = func_2();
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zw * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -611f)))));
    global0 = func_2();
    var_0 = Struct_2(var_0.a, !vec4<bool>(true, arg_2.x, all(var_0.b), any(!vec3<bool>(true, global0.b.x, var_0.b.x))));
    return max(u_input.b.zy, vec2<i32>(u_input.d, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.c, arg_0, global0.a.b.x), -(~vec4<i32>(arg_0, -1i, 26391i, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-106f, _wgslsmith_f_op_f32(-global0.a.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(601f, global0.a.a), vec2<f32>(global0.a.a, global0.a.a))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.a, -1284f) + vec2<f32>(global0.a.a, global0.a.a)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.a, 107f))))))));
    var var_1 = _wgslsmith_dot_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(u_input.c, -14206i, global0.a.c, u_input.c) ^ -vec4<i32>(global0.a.b.x, 2147483647i, -2147483647i, u_input.c))), max(min(vec4<i32>(66248i, 1i, global0.a.c, -25226i), ~vec4<i32>(0i, u_input.d, 1i, global0.a.b.x)) & min(vec4<i32>(2147483647i, global0.a.d, u_input.c, u_input.c), vec4<i32>(1i, -14589i, -2147483647i, global0.a.d) ^ vec4<i32>(-11720i, global0.a.c, 66053i, global0.a.d)), vec4<i32>(_wgslsmith_mod_i32(global0.a.d, u_input.c), -func_1(vec4<f32>(-540f, var_0.x, 914f, global0.a.a), true), firstTrailingBit(i32(-1i) * -41988i), 0i)));
    var_1 = abs(1i) & -_wgslsmith_mod_i32(global0.a.b.x & 18839i, global0.a.c);
    var var_2 = func_4(_wgslsmith_add_i32(global0.a.b.x, func_3(global0.a.c, Struct_2(global0.a, vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x)), vec4<i32>(17262i, 2147483647i, 2147483647i, -2147483647i) >> (vec4<u32>(0u, u_input.a, 44531u, u_input.e.x) % vec4<u32>(32u)), func_2())), vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), var_0.x, _wgslsmith_f_op_f32(global0.a.a - -238f), _wgslsmith_f_op_f32(min(-1199f, _wgslsmith_f_op_f32(trunc(var_0.x))))), vec3<bool>(global0.b.x, false, all(vec3<bool>(global0.b.x, false, true))), u_input.e.yz) ^ global0.a.b.xy;
    let var_3 = firstLeadingBit(firstTrailingBit(~u_input.e));
    var var_4 = Struct_1(-271f, u_input.b, i32(-1i) * -_wgslsmith_mod_i32(~(-1i), -2147483647i), 1i);
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_4.a, _wgslsmith_f_op_f32(exp2(var_0.x)), any(global0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1036f, -568f))))) + global0.a.a));
    var_2 = func_4(-(~min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c, global0.a.b.x, var_2.x, -6294i), vec4<i32>(global0.a.d, u_input.d, 19552i, 2680i)), var_4.b.x | -2147483647i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-889f, -1669f, var_4.a, var_5.x), vec4<f32>(var_5.x, -1000f, var_0.x, var_4.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -144f, -373f, 2335f)))), global0.b.zxw, vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, countOneBits(107475u))) & ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.e.wx), 1u));
    let var_6 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(var_2.x, var_4.b.x)), ~u_input.a);
}

