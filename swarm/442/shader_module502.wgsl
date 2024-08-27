struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
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

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> i32 {
    var var_0 = false;
    var var_1 = global1.a;
    var var_2 = 46130i;
    let var_3 = _wgslsmith_f_op_f32(round(320f));
    var_2 = var_1.b;
    return countOneBits(-689i);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> f32 {
    global0 = _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(88637i, global1.b.b, -global0.x >> (arg_1 % 32u))), u_input.c.xzz);
    let var_0 = global1.b.a.yzy;
    global1 = Struct_2(global1.a, global1.a);
    var var_1 = 25180i;
    var_1 = ~0i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + global1.b.a.x)))) + var_0.x), var_0.x);
}

fn func_3() -> i32 {
    var var_0 = all(select(vec3<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, false, true, false))), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))))) && false;
    var var_1 = -1000f;
    let var_2 = vec4<u32>(max(u_input.b.x, 0u), u_input.a, u_input.b.x, u_input.b.x);
    global0 = u_input.c.yxz;
    var_0 = all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), true)), vec4<bool>(true, all(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true), vec4<bool>(true, true, any(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, true)))));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-411f, global1.a.a.x, global1.b.a.x, 1068f))))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(-41630i, -2147483647i, -2147483647i, u_input.c.x) | vec4<i32>(-2147483647i, 2147483647i, -1i, global0.x)), vec4<i32>(-1i) * -vec4<i32>(19940i, 0i, global1.a.b, 20745i))), global1.b);
    let var_1 = Struct_1(vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(u_input.b & vec2<u32>(u_input.a, 44614u), u_input.b.x << (u_input.a % 32u), func_1())), global1.a.a.x, true)), 816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-322f, 1005f)), var_0.a.a.x)) + global1.b.a.x)), -_wgslsmith_add_i32(-func_3(), _wgslsmith_clamp_i32(4451i, global1.a.b, 42864i << (1u % 32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0.b.a.xzw);
    let var_3 = Struct_2(Struct_1(var_1.a, ~firstLeadingBit(_wgslsmith_add_i32(u_input.c.x, var_1.b))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, -202f, var_0.b.a.x, global1.b.a.x) - vec4<f32>(global1.a.a.x, var_0.b.a.x, var_1.a.x, -592f))), global1.a.a), -2147483647i));
    global1 = Struct_2(var_0.b, Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(exp2(var_0.b.a.x)), _wgslsmith_f_op_f32(round(-1707f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f))), _wgslsmith_mod_i32(firstTrailingBit(-3627i), var_1.b)));
    var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(-global1.b.a.x), -1687f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.b.a.wzz)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a.x, var_1.a.x, 327f) * global1.a.a.xzw)))))));
    global1 = Struct_2(var_3.b, var_3.b);
    let var_4 = countOneBits(~vec3<u32>(~(u_input.b.x & 4294967295u), 50511u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 57584u), ~vec3<u32>(u_input.b.x, u_input.a, 1u))));
    let var_5 = Struct_1(var_0.b.a, -43998i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x);
}

