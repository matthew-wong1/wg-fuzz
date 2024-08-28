struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true));

var<private> global1: vec2<f32> = vec2<f32>(472f, -1524f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> bool {
    let var_0 = 2147483647i;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.yz))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) - _wgslsmith_f_op_f32(global1.x + -1490f))), global1.x));
    global0 = array<vec4<bool>, 27>();
    let var_1 = u_input.a;
    let var_2 = Struct_1(-811f, true || (true == all(!arg_0)));
    return true;
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = any(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)))));
    var_0 = select(false, false, !any(vec3<bool>(true, true, true)));
    var var_1 = ~u_input.c.x == countOneBits(_wgslsmith_mult_i32(-1i, 34893i));
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.a.yzx, u_input.b);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1528f)))), false);
    return var_3.b;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(0i, u_input.c.x), -49548i, select(-u_input.c.x, 1i, func_3(u_input.a.yx) || true), 35753i) >> ((max(~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.a.x), ~(~vec4<u32>(u_input.d.x, 49473u, 4294967295u, u_input.a.x))) & u_input.a) % vec4<u32>(32u));
    var var_1 = ~14112i;
    var_1 = var_0.x;
    let var_2 = vec3<i32>(var_0.x, 0i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -2147483647i, var_0.x), var_0.xzw), select(u_input.c.x, u_input.c.x, false), ~var_0.x), firstTrailingBit(_wgslsmith_mod_vec3_i32(var_0.xxy, var_0.ywz)), vec3<bool>(true, true, true)), -var_0.zyw));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-562f, global1.x)))) - 102f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(858f)) * _wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-191f))))))));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(802f)))), func_3(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(62246u, u_input.d.x), vec2<u32>(u_input.b.x, 60309u)), ~vec2<u32>(1u, 58140u), true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 27>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 27>();
    global0 = array<vec4<bool>, 27>();
    let var_0 = !func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(u_input.d.x > 0u, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -693f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -850f, global1.x, global1.x), vec4<f32>(1395f, 2164f, global1.x, global1.x), vec4<bool>(true, false, false, true)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1468f, global1.x, global1.x, -984f)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(574f * _wgslsmith_f_op_f32(447f * global1.x))) * _wgslsmith_f_op_f32(func_4(firstTrailingBit(u_input.a) & select(vec4<u32>(0u, 33774u, u_input.d.x, u_input.b.x), vec4<u32>(u_input.d.x, 113175u, u_input.b.x, u_input.b.x), false), ~max(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 28378u), vec4<u32>(u_input.a.x, 4294967295u, u_input.d.x, u_input.d.x)), Struct_1(_wgslsmith_f_op_f32(-global1.x), !var_0), func_2()))), 1746f);
    var var_2 = ~countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 0u), firstTrailingBit(4294967295u), u_input.b.x), u_input.d.x));
    var var_3 = _wgslsmith_f_op_f32(ceil(global1.x));
    var_2 = abs(u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

