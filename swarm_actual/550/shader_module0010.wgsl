struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<i32> {
    global0 = array<vec4<u32>, 9>();
    let var_0 = u_input.b.x;
    return select(~(-vec2<i32>(4963i, 1i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(16049i, -5403i), -vec2<i32>(24776i, -2147483647i), -vec2<i32>(1i, -74790i)), select(vec2<bool>(!(1u >= u_input.b.x), false), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), true))));
}

fn func_3() -> u32 {
    return 1u;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = array<vec4<u32>, 9>();
    global0 = array<vec4<u32>, 9>();
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_sub_i32(-4486i, ~(~23239i)), _wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(2147483647i, 380i, 0i, -2147483647i))), vec4<i32>(1i, 0i, -(i32(-1i) * -3886i), firstTrailingBit(~1i))));
    let var_1 = Struct_1(vec3<u32>(func_3(), _wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(7139u, u_input.a.x), ~u_input.a.x)), 1u));
    let var_2 = Struct_2(vec4<f32>(-533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), -1749f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, 750f))), var_1, -1000f);
    return !(!vec3<bool>(true, !any(vec3<bool>(false, true, false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(-vec2<i32>(-7469i, -20981i), vec2<i32>(1i, -2147483647i) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))), func_1()));
    let var_1 = vec4<bool>(true, true, countOneBits(abs(_wgslsmith_add_u32(u_input.b.x, u_input.a.x))) < 21172u, true);
    let var_2 = select(!select(var_1.yxy, select(var_1.wzw, vec3<bool>(false, var_1.x, false), var_1.xyw), var_1.zwx), vec3<bool>(select(any(func_2(2030f)), var_1.x, !(u_input.b.x <= 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1354f)), _wgslsmith_f_op_f32(step(-703f, 408f))) == 937f, select(var_1.x, all(!var_1.wzz), true)), var_1.wyz);
    global0 = array<vec4<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1117f - _wgslsmith_f_op_f32(f32(-1f) * -819f)), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(4777i, var_0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -30601i), vec2<i32>(var_0.x, -7129i))) | -2147483647i);
}

