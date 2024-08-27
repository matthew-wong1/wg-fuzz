struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = all(!(!(!(!vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a)))));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(13703i, u_input.a, 1i) << (vec3<u32>(arg_0.a, var_1.a, var_1.a) % vec3<u32>(32u)), vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<bool>(false, false, false)), countOneBits(~(~abs(vec3<i32>(0i, u_input.a, u_input.a)))));
    let var_3 = select(select(vec3<bool>(arg_1.a, u_input.a == firstLeadingBit(var_2.x), arg_1.a), vec3<bool>(arg_1.a, select(true, arg_1.a, false), false), vec3<bool>(arg_1.a | true, !arg_1.a & true, all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, arg_1.a), true)))), !select(vec3<bool>(!arg_1.a, true, true), select(select(vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(true, false, true), true), select(vec3<bool>(arg_1.a, true, false), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, false, arg_1.a)), arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, true), !vec3<bool>(false, true, arg_1.a), true)), false);
    return vec3<bool>(false, var_3.x, var_3.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = select(vec3<bool>(!(arg_1.a < arg_1.a), any(!select(vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(arg_0.a, arg_3.a), vec2<bool>(arg_0.a, false))), true), !(!(!(!vec3<bool>(arg_3.a, arg_3.a, false)))), !func_3(Struct_1(15718u | arg_1.a), Struct_2(false), arg_1));
    let var_1 = arg_1;
    var_0 = !(!(!(!func_3(var_1, global0[_wgslsmith_index_u32(1u, 29u)], arg_1))));
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    return arg_1;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(global0[_wgslsmith_index_u32(1u, 29u)], Struct_1(4294967295u), vec3<f32>(807f, -611f, 242f), Struct_2(false));
    var_0 = func_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 1u, var_0.a), ~(~vec3<u32>(4294967295u, 13409u, var_0.a))), 29u)], func_2(global0[_wgslsmith_index_u32(var_0.a, 29u)], Struct_1(select(~var_0.a, abs(var_0.a), false)), vec3<f32>(_wgslsmith_div_f32(-339f, _wgslsmith_f_op_f32(f32(-1f) * -368f)), -885f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f * -930f) - 149f)), global0[_wgslsmith_index_u32(var_0.a << (18458u % 32u), 29u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(475f, 478f, 1291f))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1663f, -1573f), vec3<f32>(-604f, 1000f, 705f), false)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-682f, -1000f, 1000f) * vec3<f32>(177f, 697f, 107f))))), global0[_wgslsmith_index_u32(~var_0.a, 29u)]);
    let var_1 = -vec3<i32>(_wgslsmith_clamp_i32(2796i, u_input.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(-61570i, -31653i), -1i)), _wgslsmith_sub_i32(u_input.a, ~2147483647i), select(1i, abs(countOneBits(u_input.a)), false));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1445f * _wgslsmith_f_op_f32(min(-233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-947f)) * _wgslsmith_f_op_f32(abs(-1628f)))))), _wgslsmith_f_op_f32(step(226f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2535f), _wgslsmith_div_f32(-497f, 1131f)), _wgslsmith_f_op_f32(-779f + _wgslsmith_f_op_f32(407f - 969f))))))));
    global0 = array<Struct_2, 29>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(142112u, 4294967295u, var_0.a), vec3<u32>(15317u, 47632u, 44301u)), _wgslsmith_add_u32(var_0.a, 37151u)) ^ (1u >> (_wgslsmith_sub_u32(var_0.a, var_0.a) % 32u))), 29u)];
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(41303i, -47418i), i32(-1i) * -50597i), 21559i | min(firstTrailingBit(u_input.a) << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 13062u, 5898u, arg_2.x), vec4<u32>(arg_2.x, 61365u, 59684u, arg_2.x)) % 32u), (u_input.a | u_input.a) | ~(-1i)));
    let var_1 = 70044u;
    var var_2 = all(func_3(Struct_1(~max(4294967295u, var_1)), func_1(), Struct_1(_wgslsmith_mult_u32(arg_2.x, reverseBits(arg_2.x)))).zx);
    let var_3 = vec3<f32>(arg_1, _wgslsmith_div_f32(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(arg_3 * arg_3)), _wgslsmith_f_op_f32(step(884f, -1209f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(811f, 500f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + -784f)));
    var_0 = ~min(_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a)), 1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -430f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f - arg_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-524f))))) + _wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1429f)), -205f)), vec3<u32>(1u, 1u, 1u), -355f))));
    global0 = array<Struct_2, 29>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(764f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-612f, _wgslsmith_div_f32(639f, 940f)))))), _wgslsmith_f_op_f32(round(-1846f)), -518f, 336f);
    var var_2 = vec3<i32>(0i, 4149i ^ _wgslsmith_dot_vec2_i32(abs(reverseBits(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(~vec2<i32>(-28846i, 11392i), vec2<i32>(60681i, 1i))), -u_input.a);
    var_2 = _wgslsmith_div_vec3_i32(select(-(vec3<i32>(-1i) * -vec3<i32>(var_2.x, u_input.a, 2147483647i)), -vec3<i32>(-2147483647i, -13097i, _wgslsmith_mult_i32(-29918i, 0i)), !(false | any(vec3<bool>(true, true, false)))), _wgslsmith_add_vec3_i32(vec3<i32>(84739i >> (1u % 32u), min(-7955i, u_input.a), u_input.a >> (1u % 32u)), vec3<i32>(13312i, _wgslsmith_mult_i32(-3908i, var_2.x), 1i & var_2.x)) << ((vec3<u32>(~4294967295u, abs(27174u), 1u) & ~select(vec3<u32>(4294967295u, 9628u, 38376u), vec3<u32>(51837u, 1u, 4294967295u), vec3<bool>(false, true, false))) % vec3<u32>(32u)));
    var var_3 = Struct_1(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(56198u, ~(~(~1u)), ~(~_wgslsmith_div_u32(3369u, var_3.a))), var_1.x, 1488f);
}

