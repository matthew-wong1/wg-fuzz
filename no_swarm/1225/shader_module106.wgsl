struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = true;
    var var_1 = u_input.b;
    var var_2 = Struct_1(false);
    let var_3 = Struct_1(all(select(vec2<bool>(arg_1.a, true), select(select(vec2<bool>(false, false), vec2<bool>(false, arg_1.a), vec2<bool>(true, false)), !vec2<bool>(arg_1.a, arg_1.a), false | arg_1.a), !(25049i < arg_0))));
    let var_4 = -795f;
    return _wgslsmith_f_op_f32(-var_4);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(func_3(1i, Struct_1(any(select(vec4<bool>(arg_0.a, var_0.a, false, true), vec4<bool>(false, arg_0.a, arg_0.a, var_0.a), arg_0.a)))));
    var_0 = arg_1;
    let var_2 = arg_2;
    var var_3 = vec3<u32>(u_input.b, ~arg_2.x, u_input.a);
    return ~var_2.x;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(~0u, max((firstTrailingBit(u_input.b) >> (u_input.a % 32u)) | u_input.a, 4290u));
    var var_1 = Struct_1(true);
    let var_2 = abs(~select(vec2<u32>(u_input.a, func_2(Struct_1(var_1.a), Struct_1(true), vec3<u32>(4294967295u, 0u, var_0), -2147483647i)), abs(~vec2<u32>(24975u, u_input.b)), false));
    var_1 = Struct_1(true);
    var var_3 = select(~(1u | u_input.b), _wgslsmith_sub_u32(select(1u, _wgslsmith_div_u32(var_0, ~var_2.x), false), _wgslsmith_add_u32(var_2.x, (u_input.b & 1u) & var_0)), var_1.a);
    return Struct_1(all(!select(select(vec4<bool>(false, false, false, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, false), var_1.a), vec4<bool>(false, true, false, false), vec4<bool>(var_1.a, true, false, var_1.a))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = true;
    var_0 = false != (u_input.a <= u_input.a);
    var_0 = arg_2.a & arg_1.a;
    var var_1 = arg_2;
    return ~_wgslsmith_mult_u32(_wgslsmith_add_u32(420u, 1u), max(~0u, ~u_input.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(all(select(vec4<bool>(true, all(vec3<bool>(false, true, false)), true, u_input.a > 42495u), vec4<bool>(true, true, true, true), true)));
    let var_1 = 1172f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -648f);
    var_2 = -619f;
    var_2 = _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-1097f * _wgslsmith_f_op_f32(-var_1)))));
    return Struct_1(any(vec3<bool>(any(!vec3<bool>(var_0.a, var_0.a, true)), all(vec2<bool>(true, true)), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(-(~(~11417i)), _wgslsmith_div_i32(select(i32(-1i) * -34409i, -1i, true), abs(2147483647i)), -min(-29099i, ~(-2147483647i)), countOneBits(_wgslsmith_add_i32(0i, select(8342i, 12365i, false))));
    var var_1 = abs(~(~_wgslsmith_sub_vec3_u32(~vec3<u32>(4890u, 0u, 42313u), vec3<u32>(16568u, 0u, u_input.a))));
    var_1 = ~vec3<u32>(0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, 5784u), vec4<u32>(1u, 4294967295u, u_input.a, 1u))), 0u);
    var var_2 = func_5(_wgslsmith_div_vec2_u32(vec2<u32>((4011u ^ var_1.x) >> (~var_1.x % 32u), 1u), vec2<u32>(~_wgslsmith_div_u32(1u, 32390u), func_4(func_1(var_0.x), Struct_1(false), func_1(var_0.x), -516f))), max(vec2<u32>(max(var_1.x, 13754u), ~_wgslsmith_mod_u32(4294967295u, u_input.a)), var_1.yz));
    var_2 = func_1(_wgslsmith_add_i32(2147483647i, -15482i));
    var var_3 = _wgslsmith_add_u32(u_input.b, select(var_1.x, ~(~1u), any(select(select(vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(true, var_2.a, true)), !vec3<bool>(false, var_2.a, var_2.a), !vec3<bool>(var_2.a, var_2.a, false)))));
    var_3 = max(u_input.b, 0u);
    let var_4 = !select(vec2<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_2.a, var_2.a, false), vec4<bool>(false, var_2.a, var_2.a, true))), true), select(select(select(vec2<bool>(true, false), vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, false)), select(vec2<bool>(true, var_2.a), vec2<bool>(var_2.a, var_2.a), false), !var_2.a), !(!vec2<bool>(false, var_2.a)), true), all(!vec2<bool>(true, var_2.a)));
    var var_5 = ~((var_0.zz ^ vec2<i32>(~2147483647i, -31421i)) & var_0.zx);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_div_u32(abs(1436u), u_input.b), u_input.a, _wgslsmith_clamp_u32(reverseBits(var_1.x), var_1.x, var_1.x)), ~vec3<i32>(1i, _wgslsmith_mod_i32(-26757i, _wgslsmith_div_i32(37325i, -35583i)), ~countOneBits(var_5.x)), vec4<i32>(_wgslsmith_mult_i32(-49508i, ~(var_5.x << (u_input.b % 32u))), 1i, -firstTrailingBit(-2147483647i), -1i));
}

