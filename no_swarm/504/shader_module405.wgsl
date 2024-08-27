struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~select(vec3<u32>(u_input.b.x, 29165u, u_input.b.x), u_input.b.zxz, vec3<bool>(global1.x, global1.x, false)), select(_wgslsmith_clamp_vec3_u32(~u_input.b.yzy, select(u_input.b.yww, u_input.b.wwy, global1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(25071u, 1u, u_input.b.x), u_input.b.yww)), _wgslsmith_add_vec3_u32(vec3<u32>(65338u, 0u, u_input.b.x), u_input.b.wwx << (vec3<u32>(9659u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), !vec3<bool>(global1.x, global1.x, true))), ~vec3<u32>(10647u, u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x | 25688u)));
}

fn func_3(arg_0: u32) -> Struct_2 {
    global0 = u_input.b.x;
    global0 = arg_0;
    return Struct_2(any(global1.zx), select(vec2<bool>(any(vec2<bool>(false, false)) && any(global1.yy), true), !select(select(global1.yz, vec2<bool>(global1.x, true), global1.x), vec2<bool>(global1.x, true), global1.yy), vec2<bool>(!global1.x, global1.x & false)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    global1 = select(!select(vec3<bool>(all(vec4<bool>(arg_2.b.x, false, global1.x, arg_0)), u_input.b.x >= u_input.b.x, arg_2.b.x), select(select(vec3<bool>(arg_0, global1.x, false), vec3<bool>(global1.x, true, global1.x), arg_2.b.x), !vec3<bool>(false, arg_2.b.x, false), !vec3<bool>(arg_0, true, true)), false & (arg_3 < arg_1.x)), vec3<bool>(global1.x, all(vec4<bool>(true, true, true, true)), ((u_input.b.x <= u_input.b.x) & any(vec2<bool>(true, true))) || global1.x), _wgslsmith_mult_u32(~abs(0u), ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) != 54955u);
    global1 = select(!vec3<bool>(!(!global1.x), arg_0, arg_0), vec3<bool>(true, ~(1u | u_input.b.x) > 5251u, arg_0), true);
    global0 = ~4294967295u;
    var var_0 = Struct_1(select(!global1.zz, vec2<bool>(true, any(vec3<bool>(arg_0, false, true))), global1.x), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1031f * _wgslsmith_f_op_f32(sign(1533f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f)))), -271f), (_wgslsmith_f_op_f32(trunc(214f)) <= _wgslsmith_f_op_f32(-arg_3)) || true, _wgslsmith_div_vec4_i32(~select(-vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, 1i, 29553i) << (u_input.b % vec4<u32>(32u)), arg_2.a), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(6605i, u_input.a), vec2<i32>(-2147483647i, u_input.a)), u_input.a >> (u_input.b.x % 32u), -2147483647i, u_input.a ^ -2147483647i)));
    var_0 = Struct_1(global1.yy, _wgslsmith_f_op_vec3_f32(exp2(var_0.b)), arg_1.x > -1456f, vec4<i32>(var_0.d.x, firstTrailingBit(_wgslsmith_mult_i32(-35014i, var_0.d.x)), var_0.d.x, reverseBits(2147483647i)) | var_0.d);
    return vec3<bool>(arg_2.a && true, true, false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = 1u;
    var_0 = ~25432u;
    let var_1 = Struct_2(all(arg_0.a), vec2<bool>(global1.x, any(vec2<bool>(global1.x & arg_1.c, arg_1.c))));
    global1 = !func_4(!global1.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b.xy, vec2<f32>(arg_0.b.x, 1739f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), arg_1.b.x))), func_3(func_2() | 28224u), -697f);
    let var_2 = func_3(u_input.b.x);
    return _wgslsmith_div_f32(arg_1.b.x, 103f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-447f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(164f)), _wgslsmith_f_op_f32(ceil(-772f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(global1.x, true), vec3<f32>(-1677f, -437f, -1507f), true, vec4<i32>(-69505i, -39642i, -21756i, u_input.a)), Struct_1(vec2<bool>(false, false), vec3<f32>(-325f, 1595f, 103f), global1.x, vec4<i32>(u_input.a, u_input.a, u_input.a, -85993i)))) + _wgslsmith_f_op_f32(f32(-1f) * -181f))))));
    let var_1 = any(vec2<bool>(global1.x, true));
    var var_2 = func_3(abs(u_input.b.x));
    var var_3 = Struct_2(global1.x, !(!select(vec2<bool>(var_2.a, global1.x), global1.zy, var_1)));
    let var_4 = abs(select(countOneBits(u_input.a >> ((4294967295u ^ u_input.b.x) % 32u)), -73094i, true));
    var var_5 = select(u_input.b.x, u_input.b.x, !(true & select(true, all(var_2.b), true)));
    var_3 = Struct_2(true, var_2.b);
    let var_6 = Struct_1(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u | u_input.b.x, 1u, ~u_input.b.x), u_input.b.wwx)).b, var_0, true, select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -15024i), vec3<i32>(var_4, u_input.a, 2147483647i)), ~43632i, _wgslsmith_add_i32(0i, u_input.a), u_input.a) & select(select(vec4<i32>(-13820i, 1i, u_input.a, u_input.a), vec4<i32>(-1i, 48654i, var_4, 2147483647i), vec4<bool>(var_3.a, global1.x, false, false)), vec4<i32>(9645i, var_4, var_4, 7220i), select(vec4<bool>(true, var_3.b.x, false, true), vec4<bool>(false, true, false, var_3.a), var_3.b.x)), vec4<i32>(-(~(-20707i)), var_4, -24914i & -u_input.a, u_input.a), !func_3(~61261u).a));
    let var_7 = max(0i, 11041i) | abs(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(u_input.b.x & u_input.b.x), 32645u, firstLeadingBit(u_input.b.x)));
}

