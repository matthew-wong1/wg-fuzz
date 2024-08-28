struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

var<private> global1: array<f32, 12>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 71587u, 4294967295u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = false;
    global2 = _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 12916u, 15472u), vec3<u32>(global2.x, global2.x, 4294967295u)), vec3<u32>(34130u, global2.x, 32560u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 4294967295u, global2.x), vec3<u32>(17278u, 53255u, 0u))), ~vec3<u32>(_wgslsmith_div_u32(~4294967295u, u_input.e.x), _wgslsmith_div_u32(4294967295u, ~16988u), u_input.c));
    global1 = array<f32, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(622f)))), !(var_0 & any(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)))), vec2<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(21542u & u_input.e.x, global2.x), 28u)], (global0[_wgslsmith_index_u32(u_input.e.x, 28u)] ^ vec3<i32>(u_input.a, u_input.a, 0i)) & ~vec3<i32>(-62846i, -19299i, -29353i)), -73953i), firstLeadingBit(~u_input.c) >> (u_input.e.x % 32u));
    global1 = array<f32, 12>();
    return ~1u;
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<i32>) -> vec3<u32> {
    global1 = array<f32, 12>();
    let var_0 = vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(func_3(), 28u)], firstLeadingBit(vec3<i32>(-1i, 1i, 28633i))), max(2147483647i, arg_1)), -arg_1, arg_2.x | (select(arg_1, abs(arg_2.x), true) & _wgslsmith_dot_vec2_i32(-arg_2.wy, ~arg_2.yz)));
    let var_1 = true;
    let var_2 = Struct_1(439f, true, -arg_2.yx, func_3());
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-521f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(59985u, 12u)] - global1[_wgslsmith_index_u32(3499u, 12u)]), -507f) + var_2.a)), true, countOneBits(var_0.zx), ~0u);
    return arg_0;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c, firstLeadingBit(global2.x), ~select(u_input.c, u_input.e.x, false)), ~(~(~vec3<u32>(global2.x, global2.x, global2.x)))), reverseBits(max(func_2(abs(vec3<u32>(global2.x, 1u, 4294967295u)), max(arg_0.x, u_input.d), -vec4<i32>(u_input.d, arg_0.x, 55679i, u_input.b)), ~(vec3<u32>(0u, global2.x, u_input.c) ^ vec3<u32>(4294967295u, global2.x, u_input.c)))));
    let var_0 = Struct_1(-157f, true, ~vec2<i32>(~(~arg_0.x), -(i32(-1i) * -1i)), firstTrailingBit(u_input.c));
    var var_1 = reverseBits(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_0.x, arg_0.x), vec4<i32>(u_input.a, u_input.b, arg_0.x, var_0.c.x)), countOneBits(-48608i), -2147483647i << (global2.x % 32u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2202f * -516f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(1u, 52342u), 12u)] * 435f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f))), 2409f);
    var var_3 = !var_0.b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~u_input.e.x, 1u);
    var var_1 = func_1(vec2<i32>(-25980i << (_wgslsmith_add_u32(abs(0u), _wgslsmith_clamp_u32(var_0.x, 4458u, 80813u)) % 32u), firstLeadingBit(u_input.d)));
    let var_2 = func_1(~(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_1.c.x), var_1.c) | var_1.c));
    global0 = array<vec3<i32>, 28>();
    var var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.d, _wgslsmith_mod_u32(~(~u_input.e.x), var_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(27336u, 1u), 0u), reverseBits(vec2<u32>(1u ^ var_0.x, global2.x)), ~global2.yz));
    let var_4 = var_2;
    var var_5 = var_1.c.x;
    let var_6 = firstTrailingBit(select(vec4<u32>(global2.x, ~_wgslsmith_mod_u32(717u, var_4.d), (1u >> (0u % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 1u), global2.yy) % 32u), 24244u), vec4<u32>(max(0u, 1u), var_1.d, abs(104002u), ~29124u) << ((~vec4<u32>(var_1.d, var_2.d, 1u, u_input.c) & vec4<u32>(4294967295u, 0u, var_2.d, 0u)) % vec4<u32>(32u)), var_4.b & (func_1(vec2<i32>(42399i, -42720i)).b & var_4.b)));
    var var_7 = any(select(vec4<bool>(all(vec3<bool>(true, var_2.b, var_1.b)), true, !(!var_1.b), !(var_1.b && var_2.b)), select(!(!vec4<bool>(false, true, true, var_2.b)), select(!vec4<bool>(var_1.b, true, false, true), vec4<bool>(var_4.b, false, var_4.b, false), !vec4<bool>(var_4.b, false, var_4.b, var_1.b)), vec4<bool>(var_1.a < -245f, var_1.b && false, true, true)), var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(56715u | _wgslsmith_div_u32(var_4.d, u_input.e.x)), vec4<i32>(u_input.b, i32(-1i) * -2147483647i, -var_4.c.x, -(u_input.d & var_1.c.x)) >> (var_6 % vec4<u32>(32u)), var_6, ~vec4<u32>(var_6.x, var_1.d, ~var_3.x, _wgslsmith_mod_u32(1087u, u_input.c)) ^ ~min(var_6, abs(var_6)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(~var_1.d, 12u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(77274u, 12u)]), global1[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_f_op_f32(select(var_2.a, -1593f, var_4.b))))));
}

