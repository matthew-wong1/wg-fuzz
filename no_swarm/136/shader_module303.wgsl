struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
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

var<private> global0: Struct_2 = Struct_2(2147483647i, 35721i);

var<private> global1: array<vec2<bool>, 17>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = vec4<u32>(u_input.a.x, 0u, ~u_input.a.x, ~48094u & _wgslsmith_add_u32(u_input.a.x, ~max(u_input.a.x, 1u)));
    let var_1 = vec3<i32>(-global0.a, i32(-1i) * -_wgslsmith_sub_i32(u_input.b.x, -9823i | u_input.b.x), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(-29814i), global0.a), -(~0i))));
    let var_2 = 1i;
    var var_3 = Struct_2(0i, _wgslsmith_div_i32(11956i, ~global0.b));
    var_3 = Struct_2(countOneBits(_wgslsmith_dot_vec3_i32(countOneBits(-var_1), vec3<i32>(min(0i, u_input.b.x), -21806i, global0.b))), -1i);
    return global0.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    global0 = Struct_2(26764i, func_3());
    var var_0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true || any(vec4<bool>(false, false, false, false)), _wgslsmith_div_u32(u_input.a.x, u_input.a.x) > ~21277u, true), vec3<bool>(true, false, true)));
    let var_1 = -1691f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 136f, -670f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 1058f) + vec3<f32>(var_1, var_1, 404f)), true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-548f, -1327f, var_1), vec3<f32>(var_1, var_1, -1169f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a))))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.a.x)))), _wgslsmith_f_op_f32(select(1670f, 973f, any(vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), arg_0.a.x, _wgslsmith_f_op_f32(sign(var_0.a.x))))));
    global0 = arg_1;
    let var_2 = Struct_2(-50368i, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.b, global0.a) | arg_2.a, ~(global0.b & -11069i)));
    return func_2(vec2<i32>(-9646i, u_input.b.x));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> i32 {
    global0 = Struct_2(~(-_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-16500i, global0.a))), -global0.b);
    let var_0 = 28375u;
    let var_1 = func_4(func_2(u_input.b), Struct_2(global0.b, 1i), Struct_2(~(-10300i), -reverseBits(u_input.b.x)), vec2<u32>(max(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xw), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_0, 1u, var_0), vec4<u32>(0u, u_input.a.x, u_input.a.x, var_0)), ~u_input.a)), 105032u));
    let var_2 = !all(vec2<bool>(arg_1, !(false || arg_2)));
    return 29152i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = abs(-vec4<i32>(2147483647i, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(func_1(false, var_0, var_0), _wgslsmith_sub_i32(53486i, u_input.b.x)), ~(global0.b ^ -923i)));
    var var_2 = Struct_2(firstLeadingBit(min(_wgslsmith_add_i32(-1i & global0.b, 18002i), u_input.b.x)), -21731i);
    let var_3 = ~(~countOneBits(-1i));
    var var_4 = _wgslsmith_div_u32(30541u << (0u % 32u), reverseBits(u_input.a.x) & (_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x) << (u_input.a.x % 32u)));
    global1 = array<vec2<bool>, 17>();
    var var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2432f, 1013f, -2363f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, 1120f, 1074f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, -1072f, -366f) - vec3<f32>(-334f, 726f, 1646f))))))));
    var var_6 = var_0;
    var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), vec4<bool>(var_0, false, var_0, true)) >> (vec4<u32>(u_input.a.x, 26705u, 8003u, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(437u, _wgslsmith_clamp_u32(0u, ~21595u, ~4294967295u), _wgslsmith_dot_vec4_u32(u_input.a ^ vec4<u32>(49806u, u_input.a.x, 9648u, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), reverseBits(countOneBits(u_input.a.x)))));
}

