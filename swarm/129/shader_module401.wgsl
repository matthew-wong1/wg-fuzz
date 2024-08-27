struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<f32> {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-840f + 2198f), _wgslsmith_f_op_f32(abs(531f)), true)) - global0.a.x), _wgslsmith_f_op_f32(-1476f * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f * -907f)) - -924f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x))))));
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(u_input.c.x, firstLeadingBit(countOneBits(0i)), u_input.c.x), u_input.c.x);
    var var_1 = global0.a;
    var var_2 = Struct_1(global0.a);
    var var_3 = 4294967295u;
    return vec4<f32>(-630f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-180f, var_2.a.x), -832f)), _wgslsmith_div_f32(801f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(590f)) * _wgslsmith_f_op_f32(sign(var_1.x)))), var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - global0.a.x) + var_2.a.x));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3()), global0.a)))));
    let var_1 = 28148i;
    var var_2 = _wgslsmith_f_op_f32(min(-498f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -734f)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.a * var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, 1270f, 1183f, 1159f), vec4<f32>(global0.a.x, 1178f, global0.a.x, var_0.a.x))), true))));
    let var_4 = any(vec4<bool>(true, true, !all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, 460f, 1385f, var_0.a.x)) - vec4<f32>(var_3.a.x, -594f, 283f, var_3.a.x))) + var_3.a), var_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = all(select(!vec3<bool>(all(vec3<bool>(true, false, false)), true, false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -299f, global0.a.x, 146f));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = func_4(arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0)));
    let var_2 = _wgslsmith_add_i32(1i ^ u_input.d, -1i);
    var var_3 = var_1;
    let var_4 = max(min(-firstTrailingBit(vec3<i32>(var_2, -2147483647i, 2147483647i)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(34497i, 0i, u_input.c.x), vec3<i32>(u_input.d, var_2, -34307i)), firstLeadingBit(vec3<i32>(-2752i, -16846i, var_2)))), select(abs(vec3<i32>(-565i, -23797i, 10433i)), -(~vec3<i32>(1077i, 0i, -13321i)), !(!vec3<bool>(true, arg_1.x, true)))) << (vec3<u32>(~u_input.b, u_input.a.x >> (_wgslsmith_mult_u32(~u_input.b, ~u_input.b) % 32u), 10902u) % vec3<u32>(32u));
    return func_4(var_1, var_0);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x))), 1488f, -484f, _wgslsmith_f_op_f32(-global0.a.x))));
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f + global0.a.x), global0.a.x), -1000f, -663f, -1243f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), arg_0, func_4(Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_div_vec4_f32(global0.a, global0.a))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    let var_1 = -(~vec2<i32>(~(-u_input.c.x), -5807i));
    let var_2 = func_4(var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.a)))));
    var var_3 = var_2;
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = arg_0;
    var var_0 = abs(u_input.c.x);
    return Struct_1(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(max(443f, -154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -164f)))), global0.a.x));
    global0 = Struct_1(global0.a);
    let var_1 = func_6(func_1(vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(-665f * -1164f) > _wgslsmith_f_op_vec4_f32(func_3()).x) && all(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, false, false, true)))), all(vec3<bool>(!(global0.a.x != -1671f), _wgslsmith_f_op_f32(select(global0.a.x, 1139f, false)) <= _wgslsmith_f_op_f32(-787f + global0.a.x), true)));
    let var_2 = _wgslsmith_clamp_vec3_i32(max(vec3<i32>(abs(-87646i), ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.d, -9021i), -vec4<i32>(u_input.c.x, -2147483647i, 1i, 2147483647i))), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(-90508i, 2147483647i, u_input.d), vec3<i32>(1i, 59967i, u_input.d))), vec3<i32>(1i, ~60493i, u_input.c.x), vec3<bool>(true, true, true))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -2147483647i), vec3<i32>(u_input.d, u_input.d, u_input.d)), u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -11598i, u_input.d, -1i))) >> (vec3<u32>(28403u, _wgslsmith_div_u32(firstTrailingBit(0u), 1u & u_input.b), 1u) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, -74760i, u_input.c.x));
    var var_3 = func_6(var_1, true, all(vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true, u_input.b <= 1u, false)));
    var var_4 = func_6(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-464f, var_1.a.x, var_3.a.x, global0.a.x), global0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - vec4<f32>(var_1.a.x, 368f, 1141f, var_1.a.x))))), true, true);
    var_0 = func_6(func_5(_wgslsmith_f_op_vec4_f32(floor(var_3.a)), vec2<bool>(select(false, false, true), !all(vec2<bool>(true, false))), Struct_1(var_3.a)), firstTrailingBit(u_input.a.x) <= abs(_wgslsmith_clamp_u32(0u << (u_input.a.x % 32u), 0u, firstLeadingBit(4294967295u))), all(select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, false, true, true))), true))).a.x;
    var var_5 = _wgslsmith_f_op_vec2_f32(-var_4.a.wz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(u_input.c.x | -2147483647i), var_2.x, 0i, u_input.d), -571f, 0u);
}

