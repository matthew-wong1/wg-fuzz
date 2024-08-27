struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = Struct_1(arg_0.a.a.a, vec2<bool>(arg_0.a.a.e.x, select(true, arg_0.a.a.b.x, true)), arg_0.a.a.d.x && false, !(!vec2<bool>(true, -22761i < u_input.a.x)), select(arg_0.a.a.e, select(vec4<bool>(false, any(arg_0.a.a.b), u_input.a.x <= 28125i, any(arg_0.a.a.e)), arg_0.a.a.e, false | (arg_1 != arg_1)), arg_0.a.a.e.x));
    global0 = arg_0.a.a.b.x && var_0.b.x;
    let var_1 = Struct_3(Struct_2(Struct_1(arg_0.a.a.a, vec2<bool>(any(var_0.e), all(var_0.e)), arg_0.a.a.b.x, vec2<bool>(false, var_0.b.x), vec4<bool>(arg_1 <= 1000f, true, arg_0.a.b.x != arg_0.a.b.x, var_0.e.x)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.b.x, 39739u, arg_0.a.b.x) | vec3<u32>(arg_0.a.b.x, arg_0.a.b.x, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 377u, arg_0.a.b.x), ~vec3<u32>(arg_0.a.b.x, 1u, 26625u), min(arg_0.a.b, vec3<u32>(arg_0.a.b.x, 19421u, 0u))))));
    let var_2 = ~0u;
    let var_3 = vec2<f32>(-636f, -1000f);
    return firstLeadingBit(_wgslsmith_mod_u32(14554u, ~10271u));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec2<u32>) -> i32 {
    var var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1171f)));
    var_0 = func_3(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1797f + -1000f))) + 1701f) - _wgslsmith_f_op_f32(f32(-1f) * -1412f)));
    var_0 = ~arg_3.x;
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(arg_2.a.a.a ^ u_input.a.yxy, select(arg_2.a.a.a, arg_2.a.a.a, true)), vec2<bool>(arg_2.a.a.e.x == false, false | arg_1.e.x), true, arg_1.d, arg_2.a.a.e), firstTrailingBit(~min(vec3<u32>(arg_2.a.b.x, 5166u, arg_3.x), arg_2.a.b))));
    return -1i;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = u_input.a;
    global0 = arg_0;
    global0 = !all(vec2<bool>(!arg_0, arg_0)) && arg_0;
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(func_2(reverseBits(var_0.x), Struct_1(u_input.a.yyz, vec2<bool>(arg_0, arg_0), arg_0, vec2<bool>(arg_0, false), vec4<bool>(arg_0, true, false, true)), Struct_3(Struct_2(Struct_1(vec3<i32>(-1190i, 0i, var_0.x), vec2<bool>(false, arg_0), false, vec2<bool>(arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, false)), vec3<u32>(38507u, 18128u, 61345u))), vec2<u32>(1u, 1u)), (var_0.x ^ var_0.x) & var_0.x, 4516i), u_input.a.xzx);
    var var_2 = !select(select(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0, true, true), arg_0), !(!vec3<bool>(arg_0, arg_0, true)), vec3<bool>(select(arg_0, false, true), arg_0, arg_0 & arg_0)), vec3<bool>(all(vec2<bool>(arg_0, arg_0)) || (arg_0 && arg_0), any(select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false))), true), arg_0);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2197f, 295f), _wgslsmith_f_op_f32(122f * 657f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1017f))))))));
    let var_1 = _wgslsmith_add_vec4_i32(u_input.a, firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(false, false, true, false)), vec4<i32>(u_input.a.x, -21636i, u_input.a.x, -68962i) | vec4<i32>(u_input.a.x, u_input.a.x, 4270i, u_input.a.x)), vec4<i32>(-15225i, u_input.a.x, 0i, -2147483647i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    let var_2 = u_input.a.x;
    let var_3 = true;
    let var_4 = !(!(!vec4<bool>(true, var_3, var_1.x < u_input.a.x, true || var_3)));
    global0 = var_3;
    global0 = any(!var_4);
    var var_5 = true;
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), 0u, var_2, 217f, ~vec2<u32>(~73474u, func_1(true)));
}

