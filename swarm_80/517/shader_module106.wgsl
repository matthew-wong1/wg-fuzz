struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_4(Struct_3(-1i), vec2<u32>(~(~0u) >> (arg_0 % 32u), ~(~_wgslsmith_mult_u32(arg_0, arg_0))), Struct_2(~select(~vec2<u32>(0u, 1u), ~vec2<u32>(u_input.b, u_input.d.x), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1066f, -292f, arg_1.x)), _wgslsmith_f_op_f32(602f * 454f))) + 2587f)));
    let var_1 = !vec2<bool>(true, arg_1.x);
    var_0 = Struct_4(var_0.a, ~reverseBits(vec2<u32>(arg_2.a.x, 12582u) << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u))) << (u_input.d.zx % vec2<u32>(32u)), Struct_2(~abs(vec2<u32>(u_input.b, 1u)) >> ((max(vec2<u32>(101031u, arg_2.a.x), var_0.c.a) ^ ~vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.b + var_0.c.b))))));
    global0 = array<vec3<bool>, 24>();
    var var_2 = arg_2;
    return _wgslsmith_clamp_i32(~countOneBits(select(0i, u_input.e, var_1.x)), ~u_input.c.x, _wgslsmith_add_i32(var_0.a.a, firstTrailingBit(-8239i))) ^ var_0.a.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_3((func_3(1u, vec2<bool>(true, true), Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u))) & 0i) | (i32(-1i) * -abs(u_input.a.x)));
    var_0 = Struct_3(abs(-1i));
    let var_1 = Struct_1(select(~(~(~vec4<u32>(0u, u_input.d.x, 4294967295u, 0u))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 40304u, u_input.b, 5506u), vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.b)), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.b, u_input.d.x, u_input.d.x))), false));
    var_0 = Struct_3(select(_wgslsmith_mod_i32(var_0.a, -29308i) & -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, 40918i), vec4<i32>(u_input.c.x, 2147483647i, arg_0, var_0.a)), 68280i, false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1768f - -943f)))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1842f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-116f)))) * _wgslsmith_f_op_f32(min(-313f, _wgslsmith_f_op_f32(f32(-1f) * -641f))))));
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> bool {
    let var_0 = select(_wgslsmith_add_vec4_u32(select(~_wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(u_input.b, 0u, 20786u, 0u)), ~arg_1.a, all(select(vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(true, true, false, false), false))), arg_1.a), vec4<u32>(firstLeadingBit(7302u), 47904u, 102259u, 1u), arg_0.b == 498f);
    var var_1 = Struct_3(u_input.a.x);
    global0 = array<vec3<bool>, 24>();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-390f)) * _wgslsmith_f_op_f32(-1637f * 641f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1130f, arg_0.b))), _wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_div_f32(508f, arg_0.b), arg_2 & false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, -751f, -1514f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(374f, 2070f, arg_0.b, 721f))))))));
    let var_3 = func_2(-27188i);
    return true;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = 47551u;
    let var_1 = arg_0.a;
    global0 = array<vec3<bool>, 24>();
    let var_2 = arg_0.c.b;
    let var_3 = select(select(select(select(global0[_wgslsmith_index_u32(arg_0.c.a.x, 24u)], select(global0[_wgslsmith_index_u32(arg_0.b.x, 24u)], vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(arg_0.c.a.x, 24u)], true)), vec3<bool>(true, true, true), select(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(abs(1u), 24u)], select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), select(select(select(global0[_wgslsmith_index_u32(4294967295u, 24u)], vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(55321u, arg_0.b.x, 27884u)) << (_wgslsmith_clamp_u32(u_input.d.x, 37859u, 0u) % 32u), 24u)]), select(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], select(select(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(1u, 24u)], true), vec3<bool>(false, true, true), !global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), true)), vec3<bool>(false, func_4(Struct_2(vec2<u32>(u_input.b, arg_0.c.a.x), arg_0.c.b), func_2(4579i), any(vec3<bool>(false, false, true)) & true, ~(~vec3<u32>(4294967295u, u_input.d.x, 4294967295u))), true), any(select(vec4<bool>(true, true, func_4(Struct_2(vec2<u32>(u_input.b, arg_0.b.x), -508f), Struct_1(vec4<u32>(0u, 42460u, 1u, u_input.b)), false, vec3<u32>(u_input.b, 1u, u_input.d.x)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, true, false)))));
    return reverseBits(arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(func_1(Struct_4(Struct_3(-25187i), u_input.d.zy, Struct_2(vec2<u32>(u_input.d.x, 0u), 577f)), select(vec2<i32>(1i, -4505i), vec2<i32>(-2147483647i, 41070i), vec2<bool>(true, true)), _wgslsmith_sub_i32(1i, u_input.c.x), i32(-1i) * -2147483647i) >> (u_input.b % 32u)), max(select(~vec2<u32>(0u, 0u), vec2<u32>(u_input.b, _wgslsmith_add_u32(4294967295u, u_input.d.x)), true), ~(_wgslsmith_sub_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, u_input.b)) >> (vec2<u32>(11795u, 59732u) % vec2<u32>(32u)))), Struct_2(func_2(~(-15442i)).a.xw, -2105f));
    global0 = array<vec3<bool>, 24>();
    var_0 = Struct_4(Struct_3(var_0.a.a | -2147483647i), func_2(firstTrailingBit(-_wgslsmith_mod_i32(u_input.c.x, var_0.a.a))).a.yz, Struct_2(vec2<u32>(_wgslsmith_div_u32(u_input.d.x, ~u_input.b), ~u_input.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.b)))));
    var var_1 = var_0.c.b;
    let var_2 = Struct_2(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(1u, var_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.b.x, u_input.d.x), vec3<u32>(var_0.b.x, 1u, 5306u))), u_input.b), reverseBits(reverseBits(u_input.b)) & abs(u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-3122f, _wgslsmith_f_op_f32(round(var_0.c.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1060f))))), var_0.c.b));
    var var_3 = var_0.a;
    let var_4 = !(!vec4<bool>(true, true, select(all(vec4<bool>(false, true, false, true)), false, -1i < var_0.a.a), false));
    global0 = array<vec3<bool>, 24>();
    var_0 = Struct_4(Struct_3(47048i), ~var_0.b, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a);
}

