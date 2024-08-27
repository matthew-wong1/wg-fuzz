struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<bool> {
    let var_0 = global0.b.x;
    return global1[_wgslsmith_index_u32(24935u, 26u)];
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global0.b.x);
    global1 = array<vec2<bool>, 26>();
    let var_1 = Struct_1(-global0.a, _wgslsmith_f_op_vec2_f32(-global0.b));
    global0 = var_1;
    var var_2 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1564f, _wgslsmith_f_op_f32(f32(-1f) * -721f)))));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_0, ~31276u, 29408u), vec4<u32>(1u, 85896u, 111639u, ~max(~arg_0, ~arg_0)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<u32> {
    global1 = array<vec2<bool>, 26>();
    var var_0 = max(abs(-countOneBits(u_input.a)), 2147483647i);
    global0 = Struct_1(max(global0.a, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, 2098f), global0.b))))));
    let var_1 = Struct_1(~(-arg_2.x), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-936f, arg_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(min(-1000f, global0.b.x)))));
    return select(vec3<u32>(~(~(~arg_3)), 27036u, _wgslsmith_mult_u32(~(arg_3 | arg_3), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3, 59985u), 11626u))), vec3<u32>(_wgslsmith_mult_u32(arg_3, _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_3, arg_3), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(426u, 28792u)))), 0u, _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(select(19610u, 1u, arg_0.x), arg_3 << (arg_3 % 32u)), arg_3)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)), vec2<bool>(arg_0.x, arg_0.x && arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), 495f)));
    global0 = Struct_1(select(-40119i, _wgslsmith_mod_i32(global0.a, u_input.a), arg_0.x), var_0.b);
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-539f, 167f) + global0.b.x), _wgslsmith_f_op_f32(floor(var_0.b.x))) * var_0.b));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(428f, global0.b.x, -785f, 787f) - vec4<f32>(-1551f, 1071f, var_0.b.x, -355f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-628f, -1013f, global0.b.x, var_1.b.x))), true))));
    return Struct_1(1i, global0.b);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(vec2<bool>(true, true), ~(~1u), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(377u, 6834u, 13090u)), _wgslsmith_div_u32(3540u, 36689u), ~4294967295u) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(55359u, 75003u, 0u), vec3<u32>(42815u, 4294967295u, 66944u), vec3<u32>(0u, 20871u, 2751u)), vec3<u32>(0u, select(0u, 1u, true), 1u)));
    var var_1 = vec2<i32>(var_0.a, _wgslsmith_mod_i32(-21459i, -1i));
    var_1 = vec2<i32>(max(12481i, 1i), ~1i) | -_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, var_0.a), firstLeadingBit(vec2<i32>(var_0.a, global0.a))), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(14571i, -30530i), vec2<i32>(var_0.a, -25144i)), vec2<i32>(u_input.a, -2147483647i)));
    global0 = arg_0;
    let var_2 = -1i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(abs(~(-17026i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b))));
    let var_0 = ~(-1i);
    global0 = func_5(func_4(func_1(), ~1u, _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(8828u, 16940u, 4294967295u)), vec3<u32>(1u, 1u, func_2(0u)), func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(sign(global0.b)), ~vec3<i32>(2147483647i, var_0, global0.a), ~0u))));
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-var_0, _wgslsmith_add_i32(var_0, 0i), u_input.a, _wgslsmith_add_i32(-14113i, global0.a)), select(~vec4<i32>(var_0, var_0, global0.a, var_0), ~vec4<i32>(var_0, 22855i, -1i, var_0), false)), vec4<i32>(var_0, var_0, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-6080i, u_input.a)), abs(vec2<i32>(-14063i, 1i))), global0.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(func_5(Struct_1(u_input.a, global0.b)).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) - _wgslsmith_f_op_vec2_f32(max(global0.b, vec2<f32>(-1854f, global0.b.x))))))));
    var var_1 = func_5(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, global0.b.x), global0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(268f - global0.b.x))), global0.b.x), _wgslsmith_f_op_f32(floor(var_1.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.b.x, -844f)))), func_5(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(select(global0.b, var_1.b, false)))).b.x), var_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.b))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(163f, var_1.b.x))))))));
}

