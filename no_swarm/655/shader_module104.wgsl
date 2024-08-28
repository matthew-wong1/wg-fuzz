struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_add_i32(-53497i, 23630i), u_input.a.x, ~arg_0, ~arg_0 ^ 2147483647i), vec4<i32>(0i, u_input.c.x, -arg_0, -(i32(-1i) * -39426i))));
    let var_1 = Struct_2(Struct_1(!arg_2.a.a, select(true, ~(-9855i) > _wgslsmith_dot_vec3_i32(u_input.c.yyw, vec3<i32>(u_input.b, -22740i, arg_0)), all(vec2<bool>(true, false))), arg_2.a.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2.b)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(sign(424f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(526f, _wgslsmith_div_f32(-758f, 385f), 2651f, -1964f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, arg_2.c.x, var_1.b, -334f) + vec4<f32>(1194f, 1264f, 1252f, 1293f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c));
    var_0 = u_input.a;
    return var_1.a.c;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = u_input.a.yxy;
    let var_1 = Struct_3(Struct_1(true, true, func_3(var_0.x, ~vec2<u32>(0u, arg_1.c.x), Struct_2(Struct_1(arg_0, false, arg_1.c), -255f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(639f, -2070f)))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(737f * 192f) * _wgslsmith_f_op_f32(ceil(-352f)))))) * 790f);
    var var_3 = var_1.a.c.x;
    let var_4 = u_input.a.x;
    return 1u;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = ~(~vec3<u32>(u_input.d.x, u_input.d.x, func_2(true, Struct_1(true, true, vec3<u32>(0u, arg_0.x, arg_0.x)))));
    let var_1 = Struct_3(Struct_1(false, 0i == arg_2.x, vec3<u32>(reverseBits(var_0.x), _wgslsmith_mult_u32(~var_0.x, 95994u), _wgslsmith_mult_u32(31714u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.x, u_input.d.x), arg_0.ywy)))));
    let var_2 = -1i;
    let var_3 = true;
    var_0 = firstLeadingBit(abs(u_input.d.yyy));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1252f + -100f))) - _wgslsmith_f_op_f32(f32(-1f) * -608f)) - _wgslsmith_f_op_f32(f32(-1f) * -1475f));
    var var_1 = Struct_3(Struct_1(true, u_input.b == 2147483647i, u_input.d.yxy));
    let var_2 = var_0;
    var_1 = Struct_3(var_1.a);
    var var_3 = _wgslsmith_f_op_f32(-var_0);
    let var_4 = Struct_2(func_1(u_input.d, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1010f, var_2), _wgslsmith_f_op_f32(-1486f - var_0)), vec2<f32>(_wgslsmith_f_op_f32(1854f * var_2), -1261f)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 5424i, -21675i) | (vec3<i32>(u_input.a.x, -39762i, u_input.b) ^ vec3<i32>(u_input.b, -13037i, 19117i)), u_input.a.xxy)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, var_2))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1485f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + -580f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.c.zy, -u_input.a.wy & u_input.a.wx), min(select(~21957i, reverseBits(0i), var_1.a.a), -1i), -68206i), vec3<i32>(u_input.a.x | 2147483647i, -2147483647i, u_input.b));
}

