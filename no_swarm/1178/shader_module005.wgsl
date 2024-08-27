struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    return global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    var var_0 = max(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -2147483647i), vec2<i32>(-60044i, 0i)) | -26285i, 722i), ~(~vec2<i32>(1i, 1i)));
    let var_1 = vec2<u32>(arg_0, arg_0);
    global0 = -6303i;
    global0 = var_0.x ^ select(firstTrailingBit(-countOneBits(var_0.x)), var_0.x, arg_2.x || false);
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~23573i, 0i), vec2<i32>(-var_0.x ^ firstTrailingBit(~var_0.x), var_0.x));
    return func_2().a.x;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global0 = arg_0.x;
    let var_0 = !vec2<bool>(true, select(all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), abs(1i) > _wgslsmith_mult_i32(arg_0.x, arg_0.x), true));
    global0 = ~arg_0.x;
    var var_1 = func_3(0u, func_2(), vec3<bool>(true, var_0.x, !(!var_0.x) && all(vec4<bool>(var_0.x, var_0.x, true, true))), u_input.a);
    let var_2 = func_2();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_1(~countOneBits(vec3<i32>(-1i, 0i, 10732i))) || true, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), false)) && !(!all(vec2<bool>(false, true))), true);
    let var_1 = global1[_wgslsmith_index_u32(0u, 28u)];
    var var_2 = any(!var_0);
    var_2 = all(var_0);
    global0 = 0i;
    let var_3 = global1[_wgslsmith_index_u32(54135u, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(1i, reverseBits(_wgslsmith_mult_i32(~(-1i), -80569i)), false), 28470u, vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, -1i), vec4<i32>(2147483647i, -43296i, -1i, -1i)), -vec4<i32>(0i, 1i, -1i, -1i), ~vec4<i32>(56024i, -81980i, 2147483647i, 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, 948f)), _wgslsmith_f_op_f32(trunc(-2416f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(429f, -524f, false)))))), -305f);
}

