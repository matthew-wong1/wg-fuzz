struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1399f, 1155f), -331f))))));
    global0 = 1583f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1690f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2213f + -1080f), -594f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f), _wgslsmith_f_op_f32(-1739f + 700f)), true))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1568f * _wgslsmith_div_f32(175f, -938f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), all(vec3<bool>(false, arg_0, arg_0)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(611f)), -152f))))));
    let var_0 = vec4<bool>(all(!select(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, false, true), arg_0), !vec3<bool>(false, false, arg_0), arg_0)), true, arg_0, (arg_0 || false) && (!arg_0 != true));
    return max(firstTrailingBit(~select(~vec4<u32>(u_input.b, u_input.d, 0u, u_input.b), ~vec4<u32>(14178u, 6655u, 1u, 4294967295u), u_input.b <= u_input.d)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(31513u, u_input.b, u_input.b, 0u), vec4<u32>(28891u, u_input.d, 19476u, 4294967295u), vec4<u32>(u_input.d, 1u, 82229u, 59154u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.d, u_input.d), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d)), arg_0), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), ~vec4<u32>(1u, _wgslsmith_mult_u32(75500u, u_input.b), u_input.d >> (5367u % 32u), ~u_input.d)));
}

fn func_4(arg_0: vec4<u32>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)))));
    return !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), select(true, false, true))));
}

fn func_2() -> f32 {
    let var_0 = all(func_4(func_3(all(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f * -1000f)), 267f)) + _wgslsmith_f_op_f32(f32(-1f) * -380f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(645f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))))));
    global0 = var_1;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d), vec4<u32>(15637u, 630u, u_input.b, u_input.b)), ~vec4<u32>(u_input.d, u_input.d, 96456u, 64721u)), any(vec4<bool>(all(vec3<bool>(false, var_0, false)), false && var_0, var_0, var_0)), 1u), _wgslsmith_f_op_f32(f32(-1f) * -1215f));
    return _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-var_1));
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2228f, -516f))))) + _wgslsmith_f_op_f32(func_2()));
    global0 = _wgslsmith_f_op_f32(-1f);
    global0 = 1612f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 1000f), -1000f)) - -157f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1111f + -322f))));
    global0 = 1076f;
    return Struct_3(select(~u_input.d, ~51550u, all(vec2<bool>(true, true))), u_input.a.x, _wgslsmith_mult_i32(15434i, -(u_input.e.x | ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-411f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(375f, -651f)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), 906f, true))));
    global0 = -1465f;
    global0 = -462f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1675f - 1113f))))));
    let var_1 = func_1();
    var var_2 = 21446i;
    var var_3 = vec2<bool>(false, all(vec2<bool>(true || (var_1.b >= 0i), false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(0i), 0u, u_input.b);
}

