struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> vec2<i32> {
    return ~(~arg_1.yz);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(global0.a, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global0.b), arg_0.yz), func_3(u_input.a.x, arg_0)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, global0.a.x, var_0.a.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, -253f, -314f)))), var_0.a.a)), 2147483647i);
    global0 = Struct_1(global0.a, -(_wgslsmith_mult_i32(arg_0.x, min(-31163i, global0.b)) & -2147483647i));
    return !vec2<bool>(false, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-4808i, -2147483647i, u_input.b), max(-2147483647i, arg_0.x)) >= -2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(!(!any(vec4<bool>(true, true, false, false))), any(select(func_2(vec3<i32>(global0.b, u_input.b, 21886i), global0.a.xz), vec2<bool>(true, true), true))), !(!vec2<bool>(true, 12026i <= arg_0.a.a.b)));
    var var_1 = -11732i;
    return arg_0.a.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    var var_0 = ~(-(~vec4<i32>(countOneBits(18792i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(13809i, arg_3.d), vec2<i32>(-24384i, -1i)), 8501i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(global0.a * arg_3.a.a.a), _wgslsmith_mult_i32(0i, max(var_0.x, global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_vec3_i32(min(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, 1i, 50353i), vec3<i32>(u_input.b, global0.b, 2147483647i)), max(vec3<i32>(u_input.b, global0.b, -2147483647i), vec3<i32>(1013i, -24985i, global0.b)) ^ vec3<i32>(u_input.b, 0i, -23863i)), vec3<i32>(u_input.b << ((u_input.a.x ^ 89902u) % 32u), global0.b, global0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.a, _wgslsmith_f_op_vec3_f32(global0.a - vec3<f32>(150f, global0.a.x, global0.a.x))))), Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(global0.a, 1i)), Struct_1(global0.a, 32304i), vec4<f32>(global0.a.x, -588f, 549f, global0.a.x), 73047i), global0.a.x, _wgslsmith_f_op_f32(max(1651f, -1095f)))), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.a))), u_input.b), vec4<f32>(329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -757f)), 1362f, _wgslsmith_f_op_f32(global0.a.x - 1000f)), global0.b), Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(global0.a.x, 761f, -797f), global0.b)), Struct_1(global0.a, 15369i), vec4<f32>(global0.a.x, global0.a.x, 200f, 273f), global0.b), _wgslsmith_f_op_f32(553f * 121f), -1354f)), func_1(Struct_3(Struct_2(Struct_1(vec3<f32>(global0.a.x, 179f, 1814f), 60487i)), func_1(Struct_3(Struct_2(Struct_1(global0.a, global0.b)), Struct_1(vec3<f32>(global0.a.x, global0.a.x, global0.a.x), u_input.b), vec4<f32>(global0.a.x, global0.a.x, -765f, global0.a.x), 2147483647i), -130f, global0.a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, global0.a.x, -651f, -536f))), func_3(u_input.a.x, vec3<i32>(-10389i, 1i, 1i)).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x))), global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1209f, -191f, global0.a.x, global0.a.x)))), -1i));
    var var_1 = u_input.a.ywy;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(f32(-1f) * -454f), true)), func_1(Struct_3(Struct_2(Struct_1(global0.a, 58690i)), func_4(vec3<i32>(0i, var_0.b, 0i), vec3<f32>(-822f, global0.a.x, global0.a.x), Struct_3(Struct_2(Struct_1(vec3<f32>(1000f, -533f, global0.a.x), u_input.b)), Struct_1(global0.a, 2147483647i), vec4<f32>(var_0.a.x, 1168f, var_0.a.x, var_0.a.x), -2147483647i), Struct_3(Struct_2(Struct_1(vec3<f32>(global0.a.x, -614f, var_0.a.x), 2147483647i)), Struct_1(var_0.a, global0.b), vec4<f32>(437f, 726f, -155f, global0.a.x), -92096i)), vec4<f32>(var_0.a.x, 1083f, 479f, -282f), countOneBits(13864i)), -1000f, 743f).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x * 632f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) + global0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * -144f) - global0.a.x)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.a))), -2147483647i));
    var_2 = vec4<f32>(-1918f, -1926f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_3.a.a.x)))) * _wgslsmith_f_op_f32(-308f - -1013f)), var_2.x);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(-var_3.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -614f))), -1821i);
    let x = u_input.a;
    s_output = StorageBuffer(29795u, vec3<u32>(abs(~var_1.x << (~u_input.a.x % 32u)), u_input.a.x, ~(~(~u_input.a.x))), -vec2<i32>(-global0.b, max(_wgslsmith_mod_i32(-7398i, -44434i), var_0.b)));
}

