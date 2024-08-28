struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec4<f32> {
    let var_0 = 1u;
    var var_1 = countOneBits(-1i);
    global0 = array<vec2<u32>, 22>();
    var var_2 = arg_0.e.a.b;
    global0 = array<vec2<u32>, 22>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0.e.a.a * _wgslsmith_f_op_vec4_f32(-arg_0.e.a.a)))) * _wgslsmith_f_op_vec4_f32(-arg_0.e.a.a));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = u_input.b.x;
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(996f, -963f, _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(f32(-1f) * -809f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(0u, arg_0, vec3<u32>(1u, 0u, 4294967295u), vec2<bool>(arg_0, true), Struct_2(Struct_1(vec4<f32>(-1307f, -235f, -187f, 149f), 1000f), vec4<bool>(arg_0, arg_0, true, true))), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_f_op_f32(abs(-224f)))))));
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(abs(1u), 25354u), 1u) << (min(0u, _wgslsmith_clamp_u32(~(~15211u), ~2225u, 73570u)) % 32u);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_u32(4294967295u, arg_0.x ^ func_2(true));
    global0 = array<vec2<u32>, 22>();
    let var_1 = any(arg_1.b);
    global0 = array<vec2<u32>, 22>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a.x), -1246f, _wgslsmith_f_op_f32(exp2(arg_1.a.b)), arg_1.a.a.x)), _wgslsmith_f_op_f32(-arg_1.a.b)), vec4<bool>(arg_1.b.x, true, !var_1, !(!var_1)));
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    global0 = array<vec2<u32>, 22>();
    var var_0 = vec2<i32>(0i, firstLeadingBit(65938i));
    let var_1 = Struct_3(4294967295u, arg_1, reverseBits(vec3<u32>(0u, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 19191u), vec2<u32>(56476u, 0u)))), vec2<bool>(min(~22968u, 0u) < arg_0.c.x, all(vec4<bool>(any(vec3<bool>(arg_1, false, arg_0.d.x)), arg_1, true, !arg_1))), arg_0.e);
    let var_2 = arg_0.e;
    var_0 = -u_input.a;
    return Struct_1(vec4<f32>(837f, 995f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(324f, 269f)))))), -160f), 346f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1350f, 223f, -1732f, -419f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(830f * 147f)))))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))));
    global0 = array<vec2<u32>, 22>();
    var var_1 = var_0;
    let var_2 = firstTrailingBit(~u_input.a.x) ^ -_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(u_input.c.xzw, vec3<i32>(1i, 0i, u_input.a.x)), ~(-u_input.a.x));
    let var_3 = u_input.c.wwy;
    var_1 = Struct_2(func_4(Struct_3(1u, func_1(vec3<u32>(1u, 1u, 1u), var_0), vec3<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 35230u, 89224u), ~83476u), vec2<bool>(false, true), Struct_2(Struct_1(var_1.a.a, 439f), select(vec4<bool>(false, true, var_0.b.x, false), var_1.b, vec4<bool>(true, true, var_0.b.x, var_1.b.x)))), var_1.b.x), !(!(!vec4<bool>(false, var_0.b.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(select(-u_input.a, ~_wgslsmith_clamp_vec2_i32(var_3.xz, var_3.xz, vec2<i32>(1i, u_input.b.x)), !select(vec2<bool>(var_1.b.x, false), vec2<bool>(true, false), var_0.b.yx)), ~_wgslsmith_div_vec2_i32(vec2<i32>(-11066i, 2147483647i), -u_input.c.yz)));
}

