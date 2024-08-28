struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -8674i;

var<private> global1: array<vec4<bool>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = vec2<i32>(u_input.a, 86442i);
    let var_1 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0.x, -1i, -3562i, -(-35392i | var_0.x))), -(max(vec4<i32>(0i, var_0.x, var_0.x, -38835i), vec4<i32>(var_0.x, var_0.x, -462i, var_0.x)) | ~vec4<i32>(u_input.b, var_0.x, u_input.a, u_input.b)));
    return var_1.x << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(24790u, u_input.c.x, u_input.c.x, 4294967295u) ^ vec4<u32>(0u, u_input.c.x, 0u, 30164u), select(vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x), vec4<u32>(105971u, u_input.c.x, 15517u, u_input.c.x), arg_0.a.x))) % 32u);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(Struct_1(vec3<bool>(arg_0, true, false))), _wgslsmith_mod_i32(-2147483647i, ~u_input.b)), vec2<i32>(~(-2147483647i), u_input.b)) | ~(-5994i);
    let var_0 = Struct_1(vec3<bool>(((1u <= u_input.c.x) == any(vec3<bool>(arg_0, arg_0, arg_0))) && all(global1[_wgslsmith_index_u32(1u, 19u)]), arg_0, arg_0));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-885f - -196f) + _wgslsmith_f_op_f32(224f * -488f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(2459f * 1000f), -1283f)), _wgslsmith_f_op_f32(f32(-1f) * -552f))), -597f);
    var var_2 = ~(~u_input.c.x);
    var_2 = 1u;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1266f, var_1.x) - var_1.x) * 1882f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1511f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(827f, _wgslsmith_f_op_f32(f32(-1f) * -863f))), 827f))));
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    global0 = _wgslsmith_div_i32(2147483647i, arg_1);
    global0 = _wgslsmith_add_i32(-arg_1, -990i);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true))) * vec3<f32>(1461f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1030f)), _wgslsmith_f_op_f32(abs(1000f)))) * -933f), _wgslsmith_f_op_f32(f32(-1f) * -803f)));
    global0 = _wgslsmith_mod_i32(u_input.b ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(-4511i, -33050i, arg_1, -2147483647i), vec4<i32>(u_input.b ^ -2147483647i, -2147483647i, ~(-6561i), 47709i << (u_input.c.x % 32u))), _wgslsmith_clamp_i32(69594i, _wgslsmith_mult_i32(-41739i | u_input.b, _wgslsmith_div_i32(-2147483647i, u_input.a)), -19962i) << (u_input.c.x % 32u));
    global0 = ~(~u_input.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec4<bool>(true, true, func_1(false, u_input.a), any(vec2<bool>(false, true))), vec4<bool>(select(true, false, true), true, false, true), true), !global1[_wgslsmith_index_u32(u_input.c.x, 19u)], !(!(!global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 19u)])));
    let var_1 = select(select(vec4<bool>(_wgslsmith_div_u32(52790u, u_input.c.x) == _wgslsmith_clamp_u32(66495u, u_input.c.x, u_input.c.x), false, !var_0.x, var_0.x), vec4<bool>(!(!var_0.x), !any(var_0.xzz), var_0.x, !any(global1[_wgslsmith_index_u32(14117u, 19u)])), vec4<bool>(var_0.x || !var_0.x, (u_input.c.x & u_input.c.x) >= u_input.c.x, var_0.x, any(select(vec3<bool>(false, false, false), var_0.wzx, true)))), vec4<bool>(true, var_0.x, var_0.x, all(var_0.yw)), all(global1[_wgslsmith_index_u32(0u, 19u)]));
    global1 = array<vec4<bool>, 19>();
    let var_2 = true & all(select(select(vec4<bool>(var_1.x, true, var_1.x, false), select(var_0, global1[_wgslsmith_index_u32(u_input.c.x, 19u)], var_1.x), !vec4<bool>(var_0.x, false, true, true)), vec4<bool>(true, true, !var_1.x, var_1.x), vec4<bool>(true, var_0.x, var_0.x & var_0.x, var_1.x)));
    global0 = (u_input.a << (56632u % 32u)) & ((func_3(Struct_1(var_1.xzy)) & 75415i) >> (_wgslsmith_add_u32(countOneBits(u_input.c.x ^ u_input.c.x), u_input.c.x) % 32u));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1i, (select(~vec2<i32>(-1i, 0i), reverseBits(vec2<i32>(u_input.a, u_input.b)), vec2<bool>(var_1.x, var_1.x)) & vec2<i32>(i32(-1i) * -2728i, _wgslsmith_div_i32(u_input.b, u_input.a))) ^ countOneBits(min(-vec2<i32>(u_input.a, u_input.b), vec2<i32>(-12755i, 1i))));
}

