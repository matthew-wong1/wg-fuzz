struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(!(!any(vec2<bool>(true, true))));
    var var_1 = abs(vec2<i32>(firstLeadingBit(-1i), ~(~_wgslsmith_add_i32(0i, 63022i))));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.x, -1i) & ~var_1.x, 0i), -2147483647i, -1i) & -vec3<i32>(-46008i, _wgslsmith_sub_i32(-var_1.x, select(var_1.x, 1964i, var_0.a)), var_1.x);
    var_1 = vec2<i32>((firstTrailingBit(var_1.x) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(22750u, u_input.a), 1u) % 32u)) ^ ~2147483647i, -1i);
    global0 = array<Struct_1, 9>();
    return -479f;
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 9>();
    let var_0 = select(vec3<bool>(min(-7788i, firstTrailingBit(8776i)) != abs(~(-2147483647i)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true), vec3<bool>(false, true, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))), select(vec3<bool>(false, true, true), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), false));
    global0 = array<Struct_1, 9>();
    let var_1 = -_wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(1i, 1i, 1i, 1i));
    return vec4<bool>(!(!select(any(var_0), all(vec2<bool>(var_0.x, false)), all(var_0.yx))), true, false, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1317f + arg_2), _wgslsmith_f_op_f32(exp2(arg_2)))), _wgslsmith_f_op_f32(func_2())), vec2<f32>(arg_2, arg_2), any(!func_3()))), firstTrailingBit(104014i), arg_1);
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    let var_2 = select(var_0.b, min(_wgslsmith_mod_i32(~reverseBits(13661i), 1i), var_0.b), min(~arg_0.x, firstTrailingBit(u_input.a)) <= reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a, 4294967295u), vec3<u32>(arg_0.x, u_input.a, 4294967295u)))));
    var var_3 = countOneBits(7602i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_sub_u32(~u_input.a, ~(~_wgslsmith_sub_u32(28100u, u_input.a))) < ~(~14249u);
    let var_1 = Struct_1(!var_0);
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_2 = var_0;
    let var_3 = Struct_3(i32(-1i) * 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(910f, _wgslsmith_f_op_f32(min(567f, 671f)))) - _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 28778u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(u_input.a, 42905u), vec2<u32>(0u, 0u) << (vec2<u32>(u_input.a, 13172u) % vec2<u32>(32u))), Struct_1(u_input.a < 22394u), 642f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -615f)), _wgslsmith_f_op_f32(trunc(1451f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f * -1180f)), 1f))), ~reverseBits(min(~vec4<u32>(10855u, 40170u, u_input.a, u_input.a), min(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(min(vec3<i32>(-1i, 1609i, var_3.a) >> (vec3<u32>(var_3.d.x, 1u, var_3.d.x) % vec3<u32>(32u)), -min(vec3<i32>(var_3.a, var_3.a, -2147483647i), vec3<i32>(-1i, 20776i, 33640i))), vec3<i32>(var_3.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.d.x, u_input.a, 44243u, 38723u), var_3.d) % 32u), countOneBits(-38787i), ~36362i)));
}

