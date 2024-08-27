struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec2<i32> = vec2<i32>(29259i, -1i);

var<private> global1: f32 = -827f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = firstTrailingBit(max(-(~global0.x) ^ ~(-1i), -1i));
    var var_1 = u_input.a;
    let var_2 = Struct_1(4294967295u, !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false), all(vec2<bool>(true, true)) && (0i <= global0.x)), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 21731u), 1u), vec3<bool>(var_0 < 65302i, select(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), true), any(vec3<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, false, true, true)), true))));
    global1 = _wgslsmith_f_op_f32(step(-267f, -398f));
    var var_3 = firstTrailingBit(u_input.a.x);
    return 125481u;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<i32>(i32(-1i) * -1i, ~41685i, global0.x, global0.x);
    let var_1 = Struct_1(_wgslsmith_sub_u32(arg_1.x, firstLeadingBit(func_3())), vec4<bool>(any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, ~arg_0, arg_0, u_input.a.x), vec4<u32>(arg_0, arg_1.x, select(22234u, 1u, true), ~7083u)), vec3<bool>(!(!all(vec2<bool>(true, false))), true, true));
    global0 = var_0.yz;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(1245f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f * 1594f) + _wgslsmith_f_op_f32(-1101f + -1417f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-116f, 1108f)))))), 826f);
    let var_3 = var_1;
    return var_3;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global0 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i & global0.x), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.x), vec2<i32>(-30569i, global0.x)), -2147483647i), vec2<i32>(global0.x, -20028i ^ global0.x)) & max(-vec2<i32>(48708i, global0.x) >> (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u)), abs(abs(vec2<i32>(global0.x, 2147483647i)))), vec2<i32>(global0.x ^ global0.x, -55677i));
    let var_0 = func_2(arg_0 << (4294967295u % 32u), u_input.a.yz);
    global0 = ~_wgslsmith_add_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(0i, -15540i)), vec2<i32>(~(1i << (arg_0 % 32u)), global0.x));
    global1 = _wgslsmith_f_op_f32(1435f * -353f);
    global0 = vec2<i32>(min(2147483647i << (((var_0.a << (u_input.a.x % 32u)) ^ 0u) % 32u), countOneBits(firstLeadingBit(global0.x))), ~global0.x);
    return !var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(firstLeadingBit(countOneBits(~u_input.a.x)), select(func_1(0u), vec4<bool>(true, 4294967295u == u_input.a.x, false, global0.x > 1i), !func_1(u_input.a.x)), _wgslsmith_add_u32(1u << ((u_input.a.x & u_input.a.x) % 32u), u_input.a.x), vec3<bool>(true, true, true)), Struct_1(func_3(), vec4<bool>(true, true, false, true), _wgslsmith_sub_u32(~u_input.a.x, 1u >> (u_input.a.x % 32u)), !select(func_2(u_input.a.x, vec2<u32>(28685u, 4294967295u)).d, vec3<bool>(false, true, false), vec3<bool>(false, false, false))));
    global0 = max(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-9856i, global0.x)), -2147483647i >> (u_input.a.x % 32u)) & vec2<i32>(~global0.x, global0.x), vec2<i32>(select(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(27144i, global0.x, global0.x), vec3<i32>(5514i, global0.x, -6604i), var_0.a.b.zyz), ~vec3<i32>(global0.x, 20543i, global0.x)), var_0.b.d.x), 2147483647i));
    global0 = ~vec2<i32>(1i, global0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1464f), 1670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-663f - -1000f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(635f * 361f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -106f)), _wgslsmith_f_op_f32(sign(516f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(trunc(var_1.x))))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1653f, 1323f), var_1.zx);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c);
}

