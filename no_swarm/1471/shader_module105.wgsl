struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(~(~(i32(-1i) * -u_input.d.x)), u_input.d.x, max(898u, ~firstLeadingBit(u_input.b)) ^ u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1955f, 1548f, 908f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(977f, -854f, -443f) - vec3<f32>(763f, -1137f, -224f)))))));
    let var_1 = var_0;
    var var_2 = arg_2;
    var var_3 = arg_2.c;
    let var_4 = var_0;
    return max(u_input.c.x, var_2.b);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    let var_0 = vec4<i32>(-(u_input.d.x | -2147483647i), arg_0.x ^ -firstLeadingBit(arg_0.x), u_input.c.x, select(_wgslsmith_div_i32(firstTrailingBit(28444i), -arg_0.x), _wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_add_u32(reverseBits(u_input.a), u_input.b ^ 4294967295u) != 18347u));
    return -1254i;
}

fn func_1() -> Struct_2 {
    let var_0 = -951i;
    let var_1 = vec4<i32>(-_wgslsmith_div_i32(-51149i, u_input.d.x | var_0) | -max(func_2(Struct_2(13263i, var_0, true), Struct_2(var_0, u_input.d.x, true), Struct_2(45804i, var_0, true), Struct_2(var_0, var_0, true)), -35415i), u_input.c.x, min(func_3(-(~vec2<i32>(var_0, -32001i)), -1257f), _wgslsmith_mod_i32(~_wgslsmith_div_i32(var_0, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 26455i, u_input.c.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.c.x)) & select(u_input.c.x, var_0, true))), max(~(var_0 << (u_input.a % 32u)), ~(~67011i)) << (reverseBits(~u_input.a) % 32u));
    var var_2 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 49971i), u_input.d)), -reverseBits(u_input.c.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.d, vec2<i32>(var_1.x, 2147483647i) | vec2<i32>(2147483647i, 0i)), 32925i)));
    var var_3 = -34190i;
    var var_4 = Struct_1(firstTrailingBit(u_input.d.x), func_3(-vec2<i32>(var_0, var_1.x) | _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(u_input.d.x, -1i)), vec2<i32>(var_0, var_1.x)), -1048f), ~_wgslsmith_add_u32(44923u, _wgslsmith_sub_u32(reverseBits(u_input.b), u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2039f, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1585f))))), 669f, -159f));
    return Struct_2(~_wgslsmith_dot_vec3_i32(var_1.ywy, firstTrailingBit(firstTrailingBit(vec3<i32>(83282i, var_1.x, -37393i)))), _wgslsmith_mult_i32(var_1.x, var_1.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~_wgslsmith_mult_i32(-(u_input.d.x & u_input.d.x), abs(~14836i)), countOneBits(-1040i), max(~reverseBits(u_input.a | u_input.a), ~(~86667u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-797f, 1000f, -1264f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-967f, -1027f, -738f), vec3<f32>(208f, 1404f, 1365f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(663f, 844f, -528f)), select(false, true, false))))));
    let var_1 = all(vec2<bool>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b, u_input.d.x, var_0.b), vec4<i32>(-63431i, u_input.c.x, -18861i, var_0.b)) > ~(-17640i), true, false), true));
    var var_2 = func_1();
    var_2 = Struct_2(func_3(~u_input.c, -565f), -abs(~(u_input.d.x & u_input.c.x)), 2147483647i == ~_wgslsmith_mult_i32(u_input.d.x, 1i));
    var_2 = Struct_2(-1i, 0i, true);
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~26726u << (u_input.b % 32u));
}

