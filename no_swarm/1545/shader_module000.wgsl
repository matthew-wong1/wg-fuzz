struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: bool;

var<private> global2: vec2<bool>;

var<private> global3: f32 = -1392f;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = ~55914u;
    let var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x, true, true, (global2.x & global2.x) && false), true && any(!vec4<bool>(global2.x, true, global2.x, global2.x)));
    global2 = vec2<bool>(true, true);
    var var_2 = Struct_1(select(!vec2<bool>(true, all(vec3<bool>(global2.x, false, var_1.x))), vec2<bool>(all(var_1.yyz), !var_1.x), var_1.ww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1362f + _wgslsmith_div_f32(664f, 1118f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(ceil(-279f)), !(!var_1.x)))), vec4<bool>(!global2.x, true, any(!vec3<bool>(var_1.x, var_1.x, false)) && var_1.x, any(var_1.xx)));
    var var_3 = -(-(i32(-1i) * -1i) ^ global4.x);
    return _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1471f)))), _wgslsmith_div_f32(var_2.b, -1101f)))) == 1f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<u32> {
    global2 = !(!vec2<bool>(all(vec2<bool>(false, arg_3.c.x)), func_3()));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -1443f);
    global2 = vec2<bool>(global2.x, any(select(!select(arg_0.yy, arg_3.a, arg_3.a), select(vec2<bool>(arg_1.c.x, arg_1.c.x), arg_3.a, false), vec2<bool>(arg_1.b == arg_1.b, !arg_0.x))));
    var var_0 = !arg_0;
    global4 = ~countOneBits(min(reverseBits(vec4<i32>(arg_2.x, 1i, arg_2.x, arg_2.x)), vec4<i32>(u_input.b, global4.x, -8437i, min(global4.x, global4.x))));
    return ~vec2<u32>(0u, 4294967295u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(max(-144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(650f)) + arg_1.x))), vec4<bool>(!all(select(vec3<bool>(global2.x, global2.x, arg_2), vec3<bool>(global2.x, global2.x, true), true)), false, ~(-14930i) > (_wgslsmith_mult_i32(arg_0.x, global4.x) | -global4.x), select(arg_2 == arg_2, all(vec2<bool>(arg_2, arg_2)), arg_2) || global2.x));
    let var_1 = countOneBits(_wgslsmith_dot_vec2_u32(func_2(select(vec3<bool>(var_0.c.x, true, arg_2), select(var_0.c.yxz, var_0.c.zxy, global2.x), true), global0[_wgslsmith_index_u32(~1u, 22u)], vec3<i32>(44555i, u_input.b, abs(-43649i)), global0[_wgslsmith_index_u32(13201u, 22u)]), vec2<u32>(~(~4294967295u), 14012u)));
    var var_2 = ~_wgslsmith_div_u32(var_1, var_1);
    let var_3 = Struct_1(vec2<bool>(true, all(!var_0.c)), var_0.b, var_0.c);
    let var_4 = -906f;
    return vec2<bool>(global2.x, any(!vec4<bool>(var_3.a.x, any(var_3.c.zxy), false, any(var_3.c.yxy))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a <= 1i;
    global0 = array<Struct_1, 22>();
    global2 = select(vec2<bool>(true, true), func_1(global4.yy, vec2<f32>(_wgslsmith_f_op_f32(step(244f, _wgslsmith_div_f32(-366f, 163f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(575f, -1153f)), _wgslsmith_f_op_f32(-1355f + -827f)))), any(!(!vec4<bool>(global2.x, false, false, true)))), true);
    global2 = vec2<bool>(true, false);
    let var_0 = 1u;
    let var_1 = Struct_1(vec2<bool>(global2.x & true, all(!vec3<bool>(false, global2.x, global2.x)) & any(vec4<bool>(true, true, global2.x, global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -431f), !(!select(select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(global2.x, global2.x, true, false), global2.x), !vec4<bool>(false, global2.x, false, false), !vec4<bool>(global2.x, global2.x, global2.x, true))));
    var var_2 = Struct_1(!var_1.c.wy, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(522f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b * -336f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !var_1.c);
    let var_3 = ~abs(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0, var_0, 36869u), reverseBits(-global4.xzx), select(vec4<u32>(max(var_0, var_0) | 61761u, min(9299u, countOneBits(32450u)), 0u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, var_0), var_0 >> (1u % 32u), firstLeadingBit(var_0), 4294967295u), ~(~vec4<u32>(1u, var_0, 42447u, var_0))), global2.x), reverseBits(_wgslsmith_div_i32(_wgslsmith_add_i32(25783i, abs(u_input.b)), min(~44950i, -2147483647i))), ~vec3<u32>(firstLeadingBit(var_0), 0u, var_0));
}

