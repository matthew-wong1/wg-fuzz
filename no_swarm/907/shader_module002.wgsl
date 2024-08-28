struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<f32>(1097f, -432f, -117f, 621f), 2147483647i);

var<private> global1: vec2<u32> = vec2<u32>(0u, 16576u);

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = ~firstTrailingBit(vec4<u32>(61513u, abs(global1.x), 4294967295u, 7074u));
    var var_1 = u_input.b.x <= ~1i;
    global2 = ~2147483647i;
    return _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1148f))))));
}

fn func_2() -> Struct_4 {
    var var_0 = countOneBits(1i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x + global0.a.x))))), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 701f) - 173f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, true))))));
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1263f, var_1.x, 1000f, var_1.x))))))), ~_wgslsmith_add_i32(1i, firstLeadingBit(-u_input.b.x)));
    let var_2 = Struct_4(Struct_3(1343f, vec2<u32>(0u, 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(890f)) - 1547f), -1642f))), global0.b, select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), select(vec2<bool>(0u == global1.x, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(true, false, false)), vec2<bool>(select(true, false, true), any(vec4<bool>(true, false, false, true))))));
    global2 = _wgslsmith_clamp_i32(-2147483647i, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(-global0.b, u_input.b.x, ~global0.b), -29612i), var_2.b);
    return var_2;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a, global0.a.x, true)), arg_2.d), 1041f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1668f + -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.d - -173f), _wgslsmith_f_op_f32(755f * -558f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, arg_2.a, arg_2.d, arg_0.a.c.a), global0.a))))), func_2().b);
    let var_1 = func_2().a.b.x;
    return vec2<f32>(arg_2.a, 334f);
}

fn func_1() -> StorageBuffer {
    let var_0 = 36379i;
    let var_1 = global0.a.x;
    global2 = ~var_0;
    var var_2 = global0.a.wz;
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(20178u, global1.x)), ~vec2<u32>(1u, 0u)), 45639u);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(func_4(func_2(), 23830i, Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1721f)))), u_input.a.zy, func_2().a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(abs(global0.a.x)))))), _wgslsmith_f_op_f32(554f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-916f - 601f))))), global0.a.wx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -992f))), firstTrailingBit(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-13425i);
    let var_1 = vec2<i32>(30329i, -26631i);
    var var_2 = vec4<bool>(true, any(vec3<bool>(true, true, true || any(vec4<bool>(false, false, true, false)))), global0.a.x >= global0.a.x, any(!select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_3 = vec4<i32>(~1i, var_0, -_wgslsmith_dot_vec3_i32(select(u_input.b.yzx, -vec3<i32>(global0.b, -2147483647i, var_0), true), ~vec3<i32>(-5533i, -2147483647i, -2866i)), _wgslsmith_mod_i32(1i, var_0));
    global1 = firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xz, ~vec2<u32>(global1.x, u_input.a.x)), u_input.a.zx));
    let x = u_input.a;
    s_output = func_1();
}

