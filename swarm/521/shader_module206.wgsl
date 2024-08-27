struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    let var_1 = min(abs(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.b, u_input.b.x), arg_0.b), 1i)), reverseBits(~select(vec2<i32>(2147483647i, -26219i), u_input.b.zz, vec2<bool>(true, false))) >> (vec2<u32>(arg_0.a.x ^ ~54024u, arg_0.a.x) % vec2<u32>(32u)));
    var var_2 = arg_0;
    global0 = Struct_1(~_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(var_2.a.x, 34923u)) >= ~((1u | var_0.a.x) & u_input.d.x));
    global0 = Struct_1(true);
    return arg_0.a.x > (var_0.a.x | ~arg_0.a.x);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1091f)));
    let var_1 = Struct_2(~u_input.d.wyx, u_input.c);
    var var_2 = select(!select(vec4<bool>(true, u_input.c >= var_1.b, func_3(Struct_2(var_1.a, 2147483647i)), true), !vec4<bool>(false, true, global0.a, false), !select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(true, global0.a, false, true))), !(!vec4<bool>(true, true, true, global0.a)), func_3(Struct_2(vec3<u32>(~u_input.a, 4294967295u, 1u), i32(-1i) * -1i)));
    var_2 = !vec4<bool>(any(var_2.zy), any(select(!vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(true, var_2.x, true, false), !vec4<bool>(global0.a, false, global0.a, false))), func_3(var_1), global0.a);
    var var_3 = !vec3<bool>(!(abs(var_1.a.x) > var_1.a.x), false & var_2.x, false);
    return _wgslsmith_f_op_f32(ceil(-223f));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-312f, vec2<f32>(-441f, -371f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1486f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(799f * 119f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1127f * 210f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1346f, -1067f))) * -1230f)));
    global0 = Struct_1(!(u_input.c < _wgslsmith_mult_i32(0i, 36892i)));
    var var_2 = Struct_1(arg_0.x);
    var_2 = Struct_1(true);
    return Struct_2(u_input.d.wzz, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(u_input.b.xw), firstLeadingBit(-vec2<i32>(u_input.b.x, 2147483647i))), u_input.b.zx));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4604u, u_input.d.x), _wgslsmith_div_u32(arg_1.a.x, 16164u)), abs(_wgslsmith_div_u32(~arg_1.a.x, u_input.d.x))), _wgslsmith_dot_vec2_u32(arg_1.a.xy, firstLeadingBit(arg_1.a.zz)), countOneBits(_wgslsmith_add_u32(~_wgslsmith_div_u32(arg_1.a.x, arg_1.a.x), arg_1.a.x)));
    global0 = Struct_1(false && any(select(select(arg_2, arg_2, arg_3.a), arg_2, false && global0.a)));
    let var_1 = func_1(!vec4<bool>(arg_3.a, true, false, true));
    global0 = arg_3;
    global0 = arg_3;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(-(~(i32(-1i) * -10596i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3269f, 1469f, 1485f)))))));
    global0 = Struct_1((false || func_4(func_1(vec4<bool>(false, false, global0.a, global0.a)), func_1(vec4<bool>(true, global0.a, true, false)), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, global0.a, global0.a), false), Struct_1(true))) && !global0.a);
    var var_2 = (-1i << (~_wgslsmith_add_u32(184015u, _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u)) & (-2147483647i | var_0);
    let var_3 = u_input.b.xzy;
    var_2 = var_3.x;
    let var_4 = vec4<i32>(-52936i, -2147483647i, u_input.b.x & (reverseBits(35612i) & var_3.x), 1i);
    let var_5 = !(0i > var_0);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.d, ~(vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, 51088u) & u_input.d)), u_input.d.x, ~45325u, u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1889f, 413f), vec4<f32>(var_1.x, 1119f, -988f, -1408f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, var_5)), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-2019f + var_1.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-574f, var_1.x, 712f, 369f))))));
}

