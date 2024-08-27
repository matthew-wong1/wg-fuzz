struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<f32>(371f, -1239f, -774f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = arg_0;
    var var_0 = select(false, true, any(!(!select(global0.a, vec3<bool>(global0.a.x, global0.b.x, arg_0.b.x), false))));
    return !vec3<bool>(any(arg_0.a.yz), true, false);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(vec3<bool>(all(global0.a), false, false), !vec3<bool>(select(true, true, false), all(vec4<bool>(global0.b.x, true, false, false)) && all(vec2<bool>(global0.b.x, true)), false), _wgslsmith_f_op_vec3_f32(sign(global0.c)));
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_1(global0.b, !select(func_3(Struct_1(global0.b, vec3<bool>(global0.a.x, var_0.x, true), vec3<f32>(-107f, global0.c.x, global0.c.x))), var_0, var_0), vec3<f32>(284f, _wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1167f, global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-292f - 869f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-318f, global0.c.x))), _wgslsmith_f_op_vec2_f32(-global0.c.xx), !var_0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1547f, var_1.c.x))) * global0.c.yy));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x + -1078f)) * 915f));
    return var_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = 0u;
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(1515i, -u_input.a & firstLeadingBit(u_input.a << (9343u % 32u)), abs(39978i)), firstLeadingBit(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.a, 0i, 51064i)) << (abs(vec3<u32>(arg_1, arg_1, arg_1)) % vec3<u32>(32u)), -vec3<i32>(65655i, u_input.a, u_input.a))));
    let var_2 = ~abs(vec3<i32>(_wgslsmith_clamp_i32(abs(var_1.x), u_input.a, 49828i), _wgslsmith_mult_i32(1594i, var_1.x), -(var_1.x | 0i)));
    let var_3 = func_2();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(0u);
    var var_1 = global0.b;
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2752f, 1056f, global0.c.x, global0.c.x), vec4<f32>(global0.c.x, global0.c.x, -1623f, global0.c.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, 2813f, global0.c.x, -1000f), vec4<f32>(-956f, 1000f, 124f, global0.c.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 595f, global0.c.x) + vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)) + vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 499f)))), ~var_0);
    let var_3 = u_input.a;
    let var_4 = ~vec2<u32>(_wgslsmith_mod_u32(var_0, min(~var_0, var_0)), ~(~var_0));
    global0 = Struct_1(vec3<bool>(!func_3(func_2()).x, var_2.a.x, true), !select(global0.b, vec3<bool>(var_1.x, true, var_1.x), var_1.x), vec3<f32>(1542f, global0.c.x, 136f));
    global0 = func_2();
    var_2 = Struct_1(global0.a, !func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, global0.c.x, -664f, var_2.c.x))), var_4.x).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, 2090f, global0.c.x), global0.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.c.x, global0.c.x, var_2.c.x, -1724f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c.x, var_2.c.x, global0.c.x, -554f), vec4<f32>(global0.c.x, global0.c.x, 825f, var_2.c.x), var_2.a.x)))), ~_wgslsmith_mult_u32(var_0, ~var_4.x)).c, ~(~vec3<u32>(60781u, 0u, var_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -reverseBits(var_3), u_input.a), min(abs(vec3<i32>(var_3, -1i, 41822i) >> (vec3<u32>(var_0, 90175u, var_4.x) % vec3<u32>(32u))), vec3<i32>(countOneBits(-20189i), var_3, -u_input.a)), vec3<i32>(-(~var_3), var_3, 0i)), firstTrailingBit(~0u) >> (_wgslsmith_sub_u32(var_4.x, 27228u) % 32u));
}

