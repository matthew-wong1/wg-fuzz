struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<bool>(!(!(59184u < ~arg_0.a.x)), select(true, true, false), true, false);
    var var_1 = ~vec4<u32>(~0u, arg_0.a.x, 2080u, 0u);
    global0 = array<vec3<u32>, 9>();
    var_1 = countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.a ^ vec4<u32>(1u, 15553u, u_input.a, arg_0.a.x), max(arg_0.a, arg_0.a)), select(arg_0.a, arg_0.a, var_0.x) & max(arg_0.a, vec4<u32>(11950u, 17375u, 937u, arg_0.a.x)))) << (abs(_wgslsmith_add_vec4_u32(~vec4<u32>(76172u, var_1.x, arg_0.b.x, arg_0.b.x) << (min(arg_0.a, arg_0.a) % vec4<u32>(32u)), abs(~arg_0.a))) % vec4<u32>(32u));
    let var_2 = vec3<u32>(0u, 1u, ~(~_wgslsmith_div_u32(var_1.x, 16716u)) ^ ~(~firstTrailingBit(arg_0.a.x)));
    return _wgslsmith_mod_u32(~(~6586u), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(8152u, 9u)], ~vec3<u32>(0u, var_1.x, 77966u)), vec3<u32>(~4294967295u, var_1.x, _wgslsmith_dot_vec3_u32(~var_1.ywy, vec3<u32>(1u, arg_0.a.x, 0u)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(-424f))))))));
    let var_1 = !(!(!(any(vec4<bool>(false, false, true, false)) == true)));
    let var_2 = !(-813f > var_0.x);
    return -489i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> i32 {
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    let var_0 = -u_input.b.yx;
    global0 = array<vec3<u32>, 9>();
    return _wgslsmith_sub_i32(20132i, func_3(vec4<i32>(-585i, 0i, _wgslsmith_mult_i32(u_input.c.x, arg_1.x), -u_input.b.x), vec3<u32>(0u, u_input.a, ~u_input.a), _wgslsmith_mod_vec3_u32(~arg_0.a.wyw, vec3<u32>(u_input.a, arg_0.a.x, u_input.a))) | func_3(_wgslsmith_mult_vec4_i32(-vec4<i32>(10076i, -35232i, 12367i, -1i), -vec4<i32>(arg_1.x, 24503i, u_input.b.x, -9449i)), arg_0.b, countOneBits(arg_0.a.xyy)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(max(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(29951u, 9u)], global0[_wgslsmith_index_u32(arg_3, 9u)])), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], vec3<u32>(1u, 0u, 4294967295u)), 42099u), ~1u), select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3, 1u, arg_0.b.x, arg_0.a.x), arg_0.a), vec4<u32>(u_input.a, 59669u, u_input.a, arg_0.b.x), true) << ((~vec4<u32>(arg_0.a.x, 56179u, u_input.a, u_input.a) ^ arg_0.a) % vec4<u32>(32u))), ~(~(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, 6642u), 9u)])));
    global0 = array<vec3<u32>, 9>();
    let var_1 = 48827u;
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    return Struct_1(var_0.a, countOneBits(var_0.a.xzx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 9>();
    global0 = array<vec3<u32>, 9>();
    let var_0 = Struct_1(~(~vec4<u32>(u_input.a, 0u, u_input.a, 0u)) ^ vec4<u32>(~(u_input.a >> (u_input.a % 32u)), u_input.a, u_input.a, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.a), ~1u)), global0[_wgslsmith_index_u32(~((func_1(Struct_1(vec4<u32>(u_input.a, 1u, 45763u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 112342u))) | ~u_input.a) | 37681u), 9u)]);
    global0 = array<vec3<u32>, 9>();
    var var_1 = func_4(var_0, vec4<i32>(min(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-41095i, 2147483647i), abs(79513i)), _wgslsmith_clamp_i32(select(u_input.b.x, 39120i, true), u_input.b.x & u_input.b.x, -37691i)), u_input.c.x, firstTrailingBit(u_input.c.x), func_2(var_0, ~(~vec2<i32>(u_input.b.x, -44374i)), true)), ~(-vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), ~u_input.b.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.b.x, u_input.b.x))), 1u);
    global0 = array<vec3<u32>, 9>();
    var var_2 = Struct_1(~(~reverseBits(var_0.a)), ~var_0.a.zxw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -14191i, u_input.b.x, u_input.b.x), vec4<i32>(11555i, 4017i, 21279i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -4661i, -2147483647i)) & countOneBits(vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x)), -abs(vec4<i32>(u_input.b.x, -2147483647i, -5622i, 1i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x, -44372i, u_input.c.x, 39544i), vec4<i32>(1i, -1i, -9337i, u_input.c.x) >> (var_0.a % vec4<u32>(32u))), reverseBits(-vec4<i32>(u_input.c.x, -4906i, u_input.b.x, u_input.b.x)), vec4<i32>(firstTrailingBit(-25230i), -3820i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), min(u_input.c.x, u_input.b.x)))), _wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -976f) + _wgslsmith_f_op_f32(f32(-1f) * -254f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-513f)) + _wgslsmith_f_op_f32(f32(-1f) * -305f)))), vec4<f32>(-1000f, -455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(171f, _wgslsmith_f_op_f32(f32(-1f) * -1092f))) * _wgslsmith_f_op_f32(-2790f - _wgslsmith_f_op_f32(f32(-1f) * -268f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(700f * 1f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-294f, -735f)), _wgslsmith_f_op_f32(-666f - -116f)))), u_input.b, _wgslsmith_f_op_f32(1366f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(932f)), _wgslsmith_f_op_f32(790f - -1749f))))));
}

