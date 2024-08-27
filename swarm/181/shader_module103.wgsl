struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> vec2<i32> {
    var var_0 = -38670i;
    var var_1 = firstLeadingBit(vec2<i32>(-3330i, -_wgslsmith_mult_i32(0i ^ u_input.a, -18132i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, _wgslsmith_f_op_f32(-arg_0), -157f), vec3<f32>(arg_0, global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, global0.a.x)))), true))));
    var_1 = countOneBits(arg_1.a);
    var_1 = ~_wgslsmith_mod_vec2_i32(-(min(arg_1.a, arg_1.a) >> (min(arg_1.b, vec2<u32>(arg_1.b.x, global0.b.x)) % vec2<u32>(32u))), arg_1.a);
    return arg_1.a;
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = max(~_wgslsmith_mult_vec2_i32(-select(vec2<i32>(u_input.a, -1i), vec2<i32>(-23631i, u_input.b), vec2<bool>(true, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(-6481i, u_input.a) ^ vec2<i32>(28687i, u_input.a), -vec2<i32>(u_input.b, 2147483647i))), -countOneBits(func_3(_wgslsmith_div_f32(global0.a.x, arg_0.x), Struct_2(vec2<i32>(2147483647i, 1i), vec2<u32>(global0.b.x, global0.b.x)), false)));
    let var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = -abs(-(~(~u_input.b)));
    let var_3 = Struct_1(arg_0.yzw, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~global0.b.x, global0.b.x ^ global0.b.x), ~global0.b.x), firstTrailingBit(~firstLeadingBit(vec2<u32>(1u, 50022u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x)))))));
    var_2 = -_wgslsmith_mult_i32(~5294i, u_input.b);
    return vec2<i32>(firstTrailingBit(u_input.a), ~max(u_input.a, 2147483647i));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = 4294967295u;
    global0 = Struct_1(global0.a, ~(~vec2<u32>(~62739u, var_0)), 792f);
    let var_1 = Struct_2(abs(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, 972f, 515f, global0.c))))), global0.b);
    let var_2 = any(vec3<bool>(true, any(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), true));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(241f, _wgslsmith_f_op_f32(-668f - 706f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, global0.a.x, true)) + _wgslsmith_div_f32(global0.c, -954f))))), countOneBits(~var_1.b), _wgslsmith_div_f32(global0.a.x, 1f));
    return select(!select(select(!vec4<bool>(false, var_2, var_2, true), !vec4<bool>(var_2, false, var_2, true), select(false, false, var_2)), !select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(false, true, var_2, true), var_2), !(!vec4<bool>(var_2, false, false, true))), !select(select(!vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, var_2, true, true), !vec4<bool>(var_2, false, false, false)), vec4<bool>(global0.a.x < 820f, all(vec2<bool>(var_2, true)), any(vec4<bool>(false, var_2, false, false)), !var_2), true), !vec4<bool>(var_2, var_1.a.x > select(1i, u_input.a, var_2), var_2, all(select(vec2<bool>(true, true), vec2<bool>(true, var_2), vec2<bool>(true, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, -5963i, all(select(func_1(~global0.b.x), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(global0.a, global0.a)), global0.b, global0.c);
    let var_1 = min(firstLeadingBit(~max(~vec4<u32>(92827u, global0.b.x, global0.b.x, 68373u), ~vec4<u32>(1u, 103100u, 21487u, global0.b.x))), vec4<u32>(0u, 4294967295u, 83033u, global0.b.x));
    var var_2 = _wgslsmith_add_i32(2147483647i, firstTrailingBit(_wgslsmith_div_i32(-var_0 & -9690i, -max(var_0, var_0))));
    var_2 = -1i | u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-15327i, _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, 2147483647i), ~(vec2<i32>(var_0, -2147483647i) | vec2<i32>(-9058i, u_input.a)), vec2<bool>(true, true)), abs(vec2<i32>(max(1i, -58863i), reverseBits(u_input.b)))), 1u);
}

