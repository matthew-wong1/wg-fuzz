struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 905f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = 1u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x));
    global0 = -418f;
    return _wgslsmith_f_op_f32(sign(arg_1.c.x));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2104f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-374f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1904f + 1533f) + _wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)), _wgslsmith_f_op_f32(func_3(true, Struct_2(Struct_1(vec4<u32>(0u, u_input.d.x, 6002u, u_input.d.x), true, u_input.c), vec3<f32>(-784f, -721f, -782f), vec4<f32>(1282f, 935f, 276f, 523f)), Struct_1(vec4<u32>(u_input.d.x, 75495u, u_input.d.x, 1u), false, 18455i))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(abs(firstLeadingBit(vec4<u32>(u_input.d.x, 82573u, 4294967295u, 0u))), countOneBits(vec4<u32>(25286u, 1u, u_input.d.x, 4294967295u))), false, ~(~(-1i))), var_0.yyw, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 292f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(574f, var_0.x) - _wgslsmith_f_op_f32(func_3(false, Struct_2(Struct_1(vec4<u32>(u_input.d.x, 40751u, 4294967295u, 34163u), false, 0i), var_0.wyy, vec4<f32>(-1873f, var_0.x, 1268f, var_0.x)), Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, 20643u, u_input.d.x), false, 22646i)))), var_0.x))));
    var var_2 = var_1.a;
    let var_3 = true;
    return Struct_2(var_1.a, _wgslsmith_f_op_vec3_f32(trunc(var_0.zyw)), var_1.c);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = func_2();
    var var_1 = Struct_1(reverseBits(vec4<u32>(1u << (_wgslsmith_dot_vec3_u32(arg_2.a.wxw, arg_2.a.yww) % 32u), arg_3.a.a.x, _wgslsmith_mult_u32(arg_3.a.a.x, 0u), ~max(arg_3.a.a.x, 0u))), true, u_input.b.x);
    var_1 = var_0.a;
    global0 = -1000f;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, Struct_2(arg_2, vec3<f32>(100f, -1051f, arg_3.b.x), vec4<f32>(-867f, -206f, -123f, arg_3.b.x)), arg_3.a)), _wgslsmith_div_f32(arg_3.c.x, -823f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(1309f, -1641f))), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(trunc(arg_3.b.x))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2010f + -1802f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1026f), arg_3.c.x))), -266f));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_2.a.x, ~5831u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec3_u32(arg_3.a.a.wxx, vec3<u32>(10429u, var_1.a.x, arg_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(trunc(1097f));
    global0 = -1000f;
    global0 = _wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -136f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-867f - -798f))))));
    let var_0 = _wgslsmith_sub_u32(u_input.d.x >> ((~69071u & func_1(true, u_input.b.yy, Struct_1(vec4<u32>(24216u, u_input.d.x, 12802u, 4294967295u), false, u_input.b.x), Struct_2(Struct_1(vec4<u32>(91238u, u_input.d.x, u_input.d.x, u_input.d.x), true, 12233i), vec3<f32>(477f, 1383f, -320f), vec4<f32>(-214f, 190f, 930f, 1230f)))) % 32u), 1u) ^ (min(firstTrailingBit(_wgslsmith_add_u32(1u, u_input.d.x)), u_input.d.x) | _wgslsmith_dot_vec4_u32(~max(vec4<u32>(18482u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 61046u, 33234u, u_input.d.x)), min(~vec4<u32>(17860u, 0u, u_input.d.x, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 80086u), vec4<u32>(0u, 23846u, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, 56006u, 1215u, u_input.d.x)))));
    let var_1 = false;
    let var_2 = select(!vec3<bool>(false, var_1, any(vec4<bool>(false, var_1, var_1, true))), select(select(vec3<bool>(any(vec2<bool>(false, var_1)), -702i == u_input.c, true), vec3<bool>(var_1, var_0 != 14534u, true), !vec3<bool>(false, true, var_1)), vec3<bool>(false, all(vec4<bool>(true, var_1, false, true)), !(!var_1)), vec3<bool>(!all(vec4<bool>(true, false, var_1, var_1)), all(select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), vec2<bool>(true, true))), all(vec2<bool>(var_1, false)))), !select(!vec3<bool>(var_1, var_1, var_1), select(!vec3<bool>(false, false, var_1), vec3<bool>(var_1, false, true), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(415f, _wgslsmith_f_op_f32(1f * -1558f), ~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c, 2147483647i, -2147483647i), vec3<i32>(~22536i, 1i, firstTrailingBit(u_input.c))));
}

