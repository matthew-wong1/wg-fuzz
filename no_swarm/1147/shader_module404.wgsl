struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(1089f, -1529f)), Struct_1(vec2<f32>(415f, 784f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = countOneBits(0u);
    var var_1 = arg_0.a.x;
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_3 = true;
    global1 = array<Struct_1, 2>();
    return _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(32003u, u_input.a, u_input.a), vec3<u32>(29648u, 0u, 0u) >> (vec3<u32>(var_0, var_0, 53478u) % vec3<u32>(32u))) ^ (vec3<u32>(u_input.a, var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, u_input.a), vec2<u32>(u_input.a, u_input.a))) << (vec3<u32>(_wgslsmith_sub_u32(u_input.a, 1u), 0u, u_input.a) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_0), vec3<u32>(50393u, 4294967295u, 7414u)), vec3<u32>(var_0, var_0, 4294967295u), ~vec3<u32>(1u, u_input.a, 14976u)), countOneBits(~vec3<u32>(11242u, 1u, u_input.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 2>();
    var var_0 = -vec4<i32>(-2147483647i, arg_2.x, -_wgslsmith_dot_vec3_i32(arg_2.wzw << (vec3<u32>(32859u, u_input.a, 47083u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(arg_2.xyw, arg_2.www)), -81345i);
    return select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, -var_0.x > _wgslsmith_mult_i32(1i, arg_2.x))), select(vec2<bool>(!all(vec4<bool>(true, true, true, false)), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec3<bool>(true, true, true))), true || all(vec4<bool>(true, true, true, false))), false);
}

fn func_2() -> bool {
    global1 = array<Struct_1, 2>();
    var var_0 = false;
    var var_1 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true)), func_4(Struct_1(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1567f))), func_3(Struct_1(vec2<f32>(280f, 1017f))), vec4<i32>(-10488i, -23909i, max(8251i, 1i), -28909i)), !(!vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)))));
    global0 = array<Struct_1, 25>();
    global1 = array<Struct_1, 2>();
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = firstTrailingBit(vec4<u32>(abs(reverseBits(_wgslsmith_div_u32(u_input.a, 1u))), 4995u, 94689u, ~max(~arg_2.x, u_input.a)));
    global1 = array<Struct_1, 2>();
    var var_1 = func_2() & (4294967295u > (max(20336u, var_0.x) | _wgslsmith_sub_u32(select(0u, var_0.x, false), var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_0.a)), arg_0.a, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) + vec2<f32>(1146f, 680f))) - _wgslsmith_f_op_vec2_f32(-arg_0.a)));
    let var_3 = abs(arg_1);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1297f * var_2.a.x)), -314f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 8963u, u_input.a), ~vec3<u32>(u_input.a, 2238u, 0u)), _wgslsmith_div_u32(21101u, ~1u)), 65436u), 2u)], -vec3<i32>(1i, 1i, 1i), ~vec3<u32>(~4294967295u, ~0u, u_input.a) >> (abs(~reverseBits(vec3<u32>(26680u, u_input.a, 44008u))) % vec3<u32>(32u)));
    global1 = array<Struct_1, 2>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 25u)];
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x * var_1.a.x), var_0.a.x))), -428f));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 793f, 1754f, -416f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -135f, -226f, -1000f) * vec4<f32>(var_1.a.x, var_1.a.x, var_0.a.x, 1030f))))))));
    var var_4 = false;
    var var_5 = ~vec4<i32>(1i, 1i, 1i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(u_input.a, 4294967295u), ~1u, 0u, u_input.a), ~(~(vec4<u32>(u_input.a, 0u, 5425u, 13624u) << (vec4<u32>(4294967295u, u_input.a, 75800u, 0u) % vec4<u32>(32u))))), 1150f, vec3<i32>(~1i, var_5.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, var_5.x, select(var_5.x, var_5.x, true)), _wgslsmith_sub_i32(var_5.x, 2147483647i & var_5.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 1i, 2147483647i), 2147483647i))));
}

