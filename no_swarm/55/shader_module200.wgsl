struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = (-68951i ^ -u_input.c) < reverseBits(-_wgslsmith_mult_i32(u_input.c, -1i));
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-433f, _wgslsmith_f_op_f32(floor(111f)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1889f, 2040f), _wgslsmith_f_op_f32(step(-1773f, 1000f))))))));
    var_0 = false;
    var_0 = true;
    return u_input.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = 1001f;
    let var_2 = firstTrailingBit(0i);
    var_0 = Struct_1(reverseBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, var_0.a.x, -34220i, 1i), var_0.a, arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(464f * _wgslsmith_f_op_f32(-arg_2.b)), var_1) + -1358f), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-887f, var_0.b))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b * 1199f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))));
    return arg_2.a.x >> (~_wgslsmith_sub_u32(u_input.a.x, 134771u) % 32u);
}

fn func_1() -> vec4<i32> {
    var var_0 = vec3<i32>(47457i, ~(~select(1i, 42397i << (u_input.a.x % 32u), true)), -abs(~1i));
    return vec4<i32>(countOneBits(14609i), ~(-3448i), var_0.x, _wgslsmith_dot_vec4_i32(abs((vec4<i32>(u_input.c, var_0.x, 0i, 29240i) ^ vec4<i32>(-2147483647i, 1i, var_0.x, u_input.c)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 72991u, 14699u), vec4<u32>(8844u, u_input.b.x, u_input.a.x, 89603u)) % vec4<u32>(32u))), vec4<i32>(func_2(15757u, 4294967295u), -57884i, ~_wgslsmith_sub_i32(-49361i, -21422i), func_3(Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, var_0.x), 106f, true, 683f), vec4<i32>(-30758i, var_0.x, u_input.c, -34811i), Struct_1(vec4<i32>(u_input.c, u_input.c, var_0.x, 0i), 329f, true, 525f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    let var_1 = Struct_1(reverseBits(~func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) + _wgslsmith_f_op_f32(trunc(-424f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1233f - -679f), -262f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2118f * -1054f), _wgslsmith_f_op_f32(abs(-499f)))))), true, 1f);
    let var_2 = -224f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_2, var_1.d)), _wgslsmith_f_op_f32(795f + _wgslsmith_f_op_f32(var_2 * 1355f)), var_2, -392f));
    let var_4 = var_1;
    var var_5 = var_1.c;
    let var_6 = var_1;
    var_5 = false;
    let var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b, min(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(13995u, u_input.b.x, 21989u), u_input.a.wwz), _wgslsmith_mod_u32(1u, firstTrailingBit(19439u))), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(30563u, 11469u), u_input.a.x, ~0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(255f, -1000f)) - -494f)))));
}

