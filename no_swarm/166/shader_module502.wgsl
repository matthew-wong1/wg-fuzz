struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0;
    global0 = true;
    let var_1 = var_0.x;
    let var_2 = Struct_2(18600i, ~(~(22849u & u_input.c.x) & u_input.a), !vec4<bool>(true, true, all(vec2<bool>(true, true)), false));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-853f, 807f, -230f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1102f, -461f), vec3<f32>(124f, 302f, 297f), false))))), !((var_2.a == -var_0.x) && true));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = 1i;
    let var_1 = Struct_1(func_2(vec2<i32>(1i, arg_0.x)).a, false);
    var var_2 = ~vec4<u32>(4294967295u, _wgslsmith_div_u32(26595u, 90552u), (~u_input.b.x << (39929u % 32u)) >> (109250u % 32u), ~reverseBits(46220u));
    let var_3 = i32(-1i) * -1i;
    let var_4 = ~_wgslsmith_div_i32(-min(select(-1i, -14404i, false), reverseBits(-29522i)), -51082i);
    return vec4<bool>(any(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.a, var_2.x), u_input.d) < abs(var_2.x), 59473i <= _wgslsmith_clamp_i32(-53318i, 2147483647i, arg_0.x), true, var_1.b)), any(vec3<bool>(any(select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b))), true, false)), !(!func_2(~vec2<i32>(-29636i, var_4)).b), !var_1.b);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_mod_vec2_i32(-vec2<i32>(select(-1i, 14527i, true), reverseBits(-705i)), vec2<i32>(-1i) * -vec2<i32>(0i, 26940i)));
    var var_1 = true;
    let var_2 = Struct_2(-45286i, 20516u, select(!vec4<bool>(true, !var_0.b, false, !var_0.b), func_3(vec2<i32>(firstLeadingBit(-12906i), -1i << (u_input.d.x % 32u))), vec4<bool>(var_0.b, var_0.b, true && any(vec4<bool>(var_0.b, true, true, var_0.b)), var_0.b)));
    let var_3 = -16713i;
    var_1 = var_2.a == var_3;
    return !var_2.c.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true | all(func_1());
    global0 = ((true | any(func_1())) && true) && false;
    global0 = any(!(!vec3<bool>(true, true, any(vec2<bool>(false, true)))));
    let var_0 = Struct_2(firstLeadingBit(i32(-1i) * -1i), _wgslsmith_clamp_u32(~(~abs(u_input.c.x)), _wgslsmith_div_u32(u_input.d.x, u_input.a), 74312u ^ ~reverseBits(u_input.c.x)), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), func_3(vec2<i32>(-18653i, 0i)), true));
    global0 = func_2(min(firstTrailingBit(vec2<i32>(41143i, var_0.a)) ^ -(vec2<i32>(-24353i, var_0.a) | vec2<i32>(-2147483647i, var_0.a)), ~(vec2<i32>(-1i) * -vec2<i32>(1700i, var_0.a)))).b;
    global0 = var_0.c.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(354f + 450f), _wgslsmith_div_f32(-887f, -619f)))));
    let var_2 = Struct_3(func_2(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(var_0.a, var_0.a), vec2<i32>(-5560i, 1i)) << (countOneBits(~vec2<u32>(1u, var_0.b)) % vec2<u32>(32u))), var_0, Struct_2(-22719i, 36379u, func_3(-vec2<i32>(-1i, 1i))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(105541u, var_0.b, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b, u_input.a, var_0.b), u_input.d)) & 1u, firstLeadingBit(abs(var_0.b) & min(var_0.b, u_input.a)), max(4294967295u, abs(abs(u_input.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, var_2.a.a.x, firstLeadingBit(~0u));
}

