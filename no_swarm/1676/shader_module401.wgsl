struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
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

var<private> global0: array<Struct_2, 9>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = global1.b.x;
    global1 = Struct_2(1265f, !(!global1.b));
    let var_1 = Struct_5(vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(32107i), -(arg_0.x ^ 2147483647i), min(-arg_0.x, -5392i)), arg_0.x, i32(-1i) * -48427i, arg_0.x), vec4<bool>(all(!select(vec4<bool>(global1.b.x, true, global1.b.x, true), vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), global1.b.x)), global1.b.x, global1.b.x, global1.b.x), any(select(!(!vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x)), vec4<bool>(2147483647i > arg_0.x, global1.b.x, any(vec3<bool>(true, true, global1.b.x)), all(global1.b.zy)), global1.b.x)), -10561i, ~4294967295u << (u_input.b % 32u));
    var var_2 = vec3<bool>(min(reverseBits(~27915u), ~_wgslsmith_sub_u32(u_input.a.x, 0u)) >= var_1.e, true, false);
    return global1.a;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(vec3<i32>(arg_3.b.x, arg_3.b.x, -abs(-1856i))));
    var var_1 = _wgslsmith_f_op_f32(abs(-226f));
    var var_2 = arg_3.c.b;
    global0 = array<Struct_2, 9>();
    var_1 = _wgslsmith_f_op_f32(func_3(arg_3.b));
    return 4471u | arg_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> bool {
    global0 = array<Struct_2, 9>();
    global1 = Struct_2(global1.a, vec3<bool>(_wgslsmith_f_op_f32(step(-1597f, arg_3.a)) >= global1.a, all(!global1.b), arg_3.b.x));
    var var_0 = vec2<i32>(~(~(-2147483647i)), 2147483647i);
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(63657u >> (0u % 32u), 9u)], vec3<i32>(var_0.x, 1i, 24153i), global0[_wgslsmith_index_u32(~(1u >> (0u % 32u)), 9u)]);
    var var_2 = vec2<bool>(false, true || arg_3.b.x);
    return true;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec3<f32> {
    var var_0 = vec2<bool>(true, func_4(vec3<bool>(-2147483647i > (10891i >> (u_input.b % 32u)), true && !global1.b.x, global1.b.x), vec3<u32>(~func_2(-292f, 29695u, u_input.b, Struct_3(Struct_2(-1279f, arg_1), vec3<i32>(5987i, 0i, 51191i), Struct_2(global1.a, vec3<bool>(true, false, global1.b.x)))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.b))), u_input.a.x), _wgslsmith_clamp_u32(4294967295u, ~u_input.a.x, select(u_input.b, 711u, arg_0.x)) ^ u_input.a.x, global0[_wgslsmith_index_u32(~max(u_input.a.x, 1u), 9u)]));
    let var_1 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(52286u, u_input.a.x, u_input.a.x, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 0u), vec4<u32>(29766u, u_input.b, u_input.b, u_input.a.x)))), 4294967295u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a + 558f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * global1.a) + _wgslsmith_f_op_f32(global1.a * -238f)), -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -709f, global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), 464f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a + global1.a), _wgslsmith_div_f32(global1.a, global1.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), !vec3<bool>(true, global1.b.x, global1.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 1144f, -1046f) + vec3<f32>(-121f, 315f, 2233f)) - vec3<f32>(global1.a, 1772f, global1.a)), false)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(722f, global1.a, 358f) - vec3<f32>(1947f, global1.a, global1.a)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(450f, global1.a, global1.a))))))));
    var var_1 = Struct_4(!global1.b, Struct_3(Struct_2(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(f32(-1f) * -1191f)), !select(vec3<bool>(global1.b.x, global1.b.x, global1.b.x), global1.b, vec3<bool>(global1.b.x, false, global1.b.x))), vec3<i32>(-(i32(-1i) * -2147483647i), abs(_wgslsmith_clamp_i32(-26631i, 2147483647i, -1i)), -1i), global0[_wgslsmith_index_u32(~u_input.a.x, 9u)]), global1.b);
    var var_2 = 338f;
    var var_3 = Struct_3(Struct_2(var_0.x, vec3<bool>(true, all(global1.b.zz), true)), var_1.b.b, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + _wgslsmith_f_op_f32(sign(var_1.b.a.a)))), !var_1.c));
    var var_4 = Struct_4(!select(var_3.a.b, !(!vec3<bool>(global1.b.x, var_1.a.x, true)), true), Struct_3(Struct_2(var_3.c.a, var_3.a.b), vec3<i32>(i32(-1i) * -17124i, firstTrailingBit(var_1.b.b.x) ^ (var_3.b.x | var_1.b.b.x), -45064i), var_1.b.c), vec3<bool>(global1.b.x, !all(vec4<bool>(false, var_3.a.b.x, true, var_1.a.x)), all(vec2<bool>(!var_1.a.x, global1.a <= var_3.c.a))));
    var var_5 = Struct_4(vec3<bool>(var_3.c.b.x, any(vec4<bool>(false, !var_4.a.x, var_4.c.x, all(var_1.b.c.b.zy))), true), var_1.b, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(countOneBits(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.x, 1i, -2147483647i, 40188i), vec4<i32>(-1i, 1i, var_5.b.b.x, var_3.b.x), vec4<i32>(15108i, var_3.b.x, var_5.b.b.x, var_3.b.x))), -_wgslsmith_div_vec4_i32(~vec4<i32>(var_5.b.b.x, var_4.b.b.x, 2147483647i, var_5.b.b.x), abs(vec4<i32>(var_3.b.x, -2147483647i, -21827i, 1i)))));
}

