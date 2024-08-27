struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool) -> u32 {
    return u_input.b;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = abs(25311i);
    let var_1 = vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false))) | arg_0, true, !(!(arg_0 | true)));
    var var_2 = Struct_3(var_1, arg_0, 6566u);
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(~u_input.b, var_2.c), 70957u, min(~u_input.b, _wgslsmith_add_u32(min(0u, countOneBits(1u)), 19002u)));
    var_2 = Struct_3(vec3<bool>(reverseBits(_wgslsmith_div_i32(-1i, u_input.e.x)) <= _wgslsmith_mod_i32(-73523i, _wgslsmith_div_i32(var_0, var_0)), ~(~9105u) <= firstLeadingBit(abs(u_input.b)), true), (var_3 & ~func_2(var_2.b)) <= ~(~0u), _wgslsmith_sub_u32(~func_2(true), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, u_input.b, var_3, u_input.c), vec4<u32>(var_2.c, var_2.c, var_2.c, 4294967295u)), 1u), ~0u)));
    return all(var_2.a);
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = !((select(40328u, 21424u, arg_0.d) << (1u % 32u)) >= 4294967295u) & arg_0.d;
    var var_1 = Struct_2(Struct_1(arg_0.c.x, arg_0.b, _wgslsmith_f_op_vec3_f32(-arg_0.c), !arg_0.d), vec4<u32>(18933u, _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(33235u, u_input.c)), countOneBits(u_input.b & 1u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(max(0u, u_input.c), 4294967295u), ~1u), _wgslsmith_dot_vec2_u32(~(vec2<u32>(29112u, u_input.c) & vec2<u32>(51915u, 0u)), reverseBits(vec2<u32>(2426u, u_input.c)))), arg_0);
    let var_2 = -1331f;
    let var_3 = var_1.c.a;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) - 149f);
    return 31515u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1565f - 1239f) - 2437f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-135f)), _wgslsmith_f_op_f32(abs(-371f)))))), 1125i >> (u_input.b % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-888f - -1504f))), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(301f)))))), true);
    var var_1 = ~vec3<u32>(firstLeadingBit(u_input.b), 72188u, firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, 1u)), vec2<u32>(4294967295u, 85205u))));
    var_1 = min(~abs(vec3<u32>(~32771u, 1u >> (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_1.x, var_1.x), vec4<u32>(0u, u_input.b, var_1.x, 4294967295u)))), countOneBits(~abs(countOneBits(vec3<u32>(24395u, u_input.c, u_input.b)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -995f), _wgslsmith_f_op_f32(-849f + var_0.c.x))), u_input.d.x, vec3<f32>(-1370f, _wgslsmith_f_op_f32(-741f * _wgslsmith_f_op_f32(784f + var_0.c.x)), var_0.a), func_1(false)), vec4<u32>(firstTrailingBit(func_3(Struct_1(var_0.c.x, 2147483647i, vec3<f32>(var_0.a, var_0.a, var_0.c.x), var_0.d))), ~(min(var_1.x, u_input.c) | _wgslsmith_sub_u32(var_1.x, 54192u)), countOneBits(4294967295u), var_1.x), Struct_1(var_0.c.x, min(abs(~(-2147483647i)), ~(0i >> (1u % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), func_1(all(!vec4<bool>(var_0.d, false, true, true)))));
    var var_3 = vec3<i32>(-1i, -1i, max(min(var_0.b, u_input.e.x), _wgslsmith_add_i32(-29271i, var_0.b)));
    let var_4 = u_input.d.yzz | (vec3<i32>(var_3.x, u_input.d.x, u_input.d.x) >> (reverseBits(vec3<u32>(u_input.b, var_2.b.x, 4294967295u) << (countOneBits(var_2.b.zwy) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_5 = var_2;
    let var_6 = Struct_3(select(vec3<bool>(false, false, all(!vec4<bool>(false, true, true, var_5.a.d))), !vec3<bool>(any(vec4<bool>(var_0.d, var_5.c.d, var_2.c.d, var_5.a.d)), !var_0.d, true), false), true || !func_1(all(vec3<bool>(false, var_0.d, false))), 70945u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.x), var_5.b, -_wgslsmith_mod_i32(-16990i, ~var_0.b), firstTrailingBit(var_5.b.x));
}

