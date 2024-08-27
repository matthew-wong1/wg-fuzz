struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

var<private> global1: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false));

var<private> global2: array<vec2<u32>, 12>;

var<private> global3: vec3<f32> = vec3<f32>(1061f, 818f, 469f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    var var_0 = all(select(vec2<bool>(!all(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), any(global1[_wgslsmith_index_u32(u_input.b, 6u)])));
    let var_1 = vec3<i32>(u_input.a, ~(-(firstLeadingBit(1i) ^ (-50806i ^ u_input.a))), ~(-u_input.a));
    global0 = array<vec2<f32>, 1>();
    var var_2 = ~(~vec4<u32>(18963u, ~(~arg_0.d), u_input.b, 0u));
    var var_3 = !(false & !(!select(false, false, true)));
    return !(!all(vec3<bool>(true, true, true)));
}

fn func_2() -> vec2<bool> {
    global2 = array<vec2<u32>, 12>();
    let var_0 = vec2<bool>(true, true);
    global2 = array<vec2<u32>, 12>();
    var var_1 = (4294967295u ^ min(~_wgslsmith_div_u32(u_input.b, u_input.b), ~(~u_input.b))) != u_input.b;
    let var_2 = select(select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), true)), ~u_input.b >= ~reverseBits(u_input.b)), !vec3<bool>(var_0.x, var_0.x | true, any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)))), !vec3<bool>(false, false, func_3(Struct_3(vec3<i32>(-39277i, -18380i, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec2<u32>(1u, 16217u), u_input.b), Struct_3(vec3<i32>(u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, 2147483647i, -4297i, u_input.a), vec2<u32>(u_input.b, 0u), 4294967295u))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1.c.x;
    let var_1 = Struct_2(-abs(2147483647i >> (0u % 32u)));
    var var_2 = true || any(vec2<bool>(any(func_2()), true));
    global0 = array<vec2<f32>, 1>();
    let var_3 = global3.x;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + arg_0), -419f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 1>();
    global1 = array<vec4<bool>, 6>();
    let var_0 = u_input.a;
    var var_1 = Struct_2(~u_input.a);
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global3.x, global3.x, all(vec2<bool>(false, true)))), global3.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-global3.x), Struct_3(vec3<i32>(var_0, -16032i, -7735i), vec4<i32>(u_input.a, 0i, 1i, var_0), vec2<u32>(u_input.b, 28889u), 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 645f) + vec3<f32>(-1805f, 738f, 509f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-948f, 119f, global3.x) + vec3<f32>(global3.x, -1572f, global3.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 125f, global3.x), vec3<f32>(global3.x, global3.x, -206f))))));
    global0 = array<vec2<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, 42762i, var_1.a, 47625i), vec4<i32>(2147483647i, var_0, var_0, var_0)), vec4<i32>(1i, var_1.a, 27591i, var_1.a), vec4<i32>(u_input.a, 25417i, var_0, 8361i))), vec4<i32>(-u_input.a, max(var_1.a, _wgslsmith_clamp_i32(var_0 & -2147483647i, _wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), countOneBits(-2147483647i))), (reverseBits(var_1.a) << (u_input.b % 32u)) | -var_1.a, -1i), u_input.b, _wgslsmith_sub_i32(var_0, -2565i) << (countOneBits(_wgslsmith_div_u32(abs(u_input.b), ~u_input.b)) % 32u));
}

