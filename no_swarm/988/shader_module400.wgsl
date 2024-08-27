struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1149f * -597f) * _wgslsmith_f_op_f32(step(-1494f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) * -727f))))), -365f));
    global1 = array<vec4<bool>, 2>();
    var var_1 = Struct_1(reverseBits(1i) << (u_input.a % 32u));
    var_1 = Struct_1(-32402i);
    global1 = array<vec4<bool>, 2>();
    return u_input.c.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    global0 = Struct_1(~2147483647i);
    var var_0 = select(max(select(firstTrailingBit(u_input.b.xz), u_input.b.yx, vec2<bool>(true, arg_1)), u_input.b.wy), _wgslsmith_clamp_vec2_u32(~(min(vec2<u32>(u_input.b.x, 11959u), vec2<u32>(4294967295u, u_input.b.x)) ^ u_input.b.zy), u_input.b.xw, u_input.b.xz), select(vec2<bool>(arg_1 || true, any(select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, false, false), vec3<bool>(true, true, true)))), vec2<bool>(any(!vec3<bool>(arg_1, arg_1, true)), true), !select(select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), arg_1), !vec2<bool>(arg_1, false), all(vec2<bool>(true, false)))));
    let var_1 = Struct_1(select(arg_0.x, ~(-37906i), !arg_1 | any(!vec2<bool>(arg_1, arg_1))));
    global0 = Struct_1(-_wgslsmith_sub_i32(max(-u_input.c.x, -1i), global0.a << (abs(var_0.x) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(887f + _wgslsmith_div_f32(-1000f, 1507f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return _wgslsmith_add_u32(var_0.x, 1u);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    global1 = array<vec4<bool>, 2>();
    global0 = Struct_1(arg_2.a);
    var var_0 = all(!select(global1[_wgslsmith_index_u32(~(1u | arg_1.b.x), 2u)], !global1[_wgslsmith_index_u32(~10921u, 2u)], arg_0.x));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 1u, _wgslsmith_dot_vec4_u32(reverseBits(u_input.b) | u_input.b, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, 46062u, arg_1.b.x, u_input.a), u_input.b, vec4<u32>(arg_1.b.x, 82294u, u_input.b.x, 1u))), u_input.b.x), u_input.b);
    global1 = array<vec4<bool>, 2>();
    return vec4<u32>(~u_input.b.x, func_3(max(vec3<i32>(1i, -u_input.c.x, ~0i), vec3<i32>(_wgslsmith_mult_i32(35294i, 1i), func_2(), arg_3.a)), true), min(1u, abs(_wgslsmith_sub_u32(~arg_1.b.x, arg_2.b.x))), _wgslsmith_clamp_u32(~u_input.b.x, ~4294967295u, ~(~arg_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1i);
    let var_0 = Struct_1(~global0.a);
    global1 = array<vec4<bool>, 2>();
    global1 = array<vec4<bool>, 2>();
    let var_1 = firstLeadingBit(vec4<i32>(16071i, 1i, -30557i, global0.a)) >> (func_1(!select(select(vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]), global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), Struct_2(_wgslsmith_sub_i32(0i, 1i), _wgslsmith_sub_vec2_u32(u_input.b.zy, _wgslsmith_mod_vec2_u32(u_input.b.wz, u_input.b.zx))), Struct_2(_wgslsmith_div_i32(firstTrailingBit(1i), firstLeadingBit(-2990i)), ~abs(vec2<u32>(1u, u_input.a))), Struct_2(max(-2147483647i, ~var_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, 0u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-741i);
}

