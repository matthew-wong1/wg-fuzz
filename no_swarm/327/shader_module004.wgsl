struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_clamp_i32(-1i, 2147483647i, _wgslsmith_add_i32(~(_wgslsmith_clamp_i32(-40869i, 0i, 24615i) & (-1i << (0u % 32u))), -2147483647i));
    let var_1 = Struct_3(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(74407u, 40044u, 0u) >> (vec3<u32>(49043u, u_input.b.x, 64010u) % vec3<u32>(32u)), reverseBits(vec3<u32>(6037u, u_input.b.x, u_input.b.x)), true), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 18079u), vec4<u32>(u_input.b.x, 1u, u_input.a, 62438u)), u_input.b.x, ~60973u)), -583f, Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1804f + -591f) * -121f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1242f)))))), ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-3352i, 2147483647i), -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(49343i, -33834i) >> (u_input.b.zw % vec2<u32>(32u)), abs(vec2<i32>(1i, 62183i))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 1i)), select(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -4964i), true)), _wgslsmith_add_i32(firstTrailingBit(4529i), i32(-1i) * -20160i)), (true & (all(vec2<bool>(false, false)) | false)) & (1i >= select(i32(-1i) * -2147483647i, _wgslsmith_div_i32(21612i, 28601i), false)));
    var var_2 = Struct_1(u_input.a, 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.b)), _wgslsmith_f_op_f32(min(var_1.c.b, var_1.b))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1258f)))), -552f))), var_1.e);
    var_2 = Struct_1(~u_input.a, 1u, var_2.c, false);
    let var_3 = var_1;
    return ~var_3.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = ~u_input.b;
    var var_1 = 1047f;
    let var_2 = -100f;
    var var_3 = Struct_2(-465f, -1551f);
    var_0 = vec4<u32>(1u, u_input.a, abs(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x << (var_0.x % 32u), ~u_input.b.x), u_input.a)), countOneBits(func_3()));
    return -359i;
}

fn func_1() -> Struct_2 {
    global0 = select(true, !(!(874i != firstTrailingBit(-1i))), !(true || any(vec2<bool>(false, true))));
    global0 = true;
    var var_0 = Struct_3(u_input.b.x, -282f, Struct_2(-573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-486f, -1579f)))) - -1086f)), -countOneBits(select(-vec4<i32>(-25937i, -8522i, -11149i, 19563i), vec4<i32>(1i, 2147483647i, 1i, 2147483647i), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true))), false);
    var var_1 = all(select(vec2<bool>(false, select(var_0.e & var_0.e, var_0.e, true || var_0.e)), vec2<bool>(var_0.e, var_0.e), true));
    let var_2 = (countOneBits(func_2(var_0.d.wyz, true, false | var_0.e, _wgslsmith_div_i32(var_0.d.x, 2147483647i))) << (0u % 32u)) & var_0.d.x;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    let var_1 = func_1();
    var var_2 = select(select(vec3<bool>(_wgslsmith_f_op_f32(-var_1.a) < _wgslsmith_f_op_f32(min(-380f, var_1.a)), true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, false), vec3<bool>(false, true, all(vec3<bool>(false, true, false)))), select(vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), !vec3<bool>(true, select(true, true, false), any(vec4<bool>(true, true, false, true)))), vec3<bool>(true, true, _wgslsmith_f_op_f32(floor(-863f)) < -516f));
    let var_3 = -1i;
    var var_4 = Struct_4(select(var_2.yx, !select(var_2.yy, select(vec2<bool>(false, var_2.x), var_2.zx, true), -30506i > var_3), vec2<bool>(false, var_2.x && all(vec3<bool>(var_2.x, true, false)))));
    var_2 = vec3<bool>(var_2.x, true, true);
    var_0 = select(_wgslsmith_mult_u32(func_3(), u_input.a), reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(58498u, 843u), 1u)), any(vec3<bool>(var_4.a.x, var_4.a.x, var_4.a.x))) >> ((min(74252u, u_input.a) & _wgslsmith_sub_u32(abs(u_input.a), ~_wgslsmith_mod_u32(4294967295u, 1u))) % 32u);
    global0 = !(var_2.x && false);
    let x = u_input.a;
    s_output = StorageBuffer(1i ^ _wgslsmith_add_i32(-_wgslsmith_div_i32(var_3, var_3), var_3));
}

