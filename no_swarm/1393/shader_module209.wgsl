struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: f32 = 327f;

var<private> global2: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    let var_0 = vec4<i32>(reverseBits(u_input.c.x), -(-u_input.b << (~(~0u) % 32u)), 0i, u_input.a.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1272f - -197f) + -1157f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f - 1324f)), 1030f)))));
    var var_1 = ~firstTrailingBit(select(firstLeadingBit(~vec2<u32>(1u, 27394u)), ~(~vec2<u32>(1u, 0u)), -2147483647i == ~var_0.x));
    var var_2 = vec3<f32>(1f, 1f, 1f);
    var var_3 = Struct_1(select(~31658u ^ var_1.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, var_1.x)), true) << (3772u % 32u), select(!select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(true, true)), select(select(!vec2<bool>(true, global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), true), vec2<bool>(false, true), select(vec2<bool>(false, true), select(vec2<bool>(true, global0.x), vec2<bool>(true, true), global0.x), !vec2<bool>(global0.x, false))), global0.x));
    return 4451u;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = 1u;
    global1 = -1076f;
    global2 = global0.x;
    global0 = select(vec2<bool>(global0.x & any(vec2<bool>(true, true)), true), select(vec2<bool>(!any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !global0.x), !vec2<bool>(!global0.x, global0.x), vec2<bool>(true, true)), false);
    var var_1 = vec3<i32>(u_input.a.x, arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(10518i, min(i32(-1i) * -19831i, -52591i >> (var_0 % 32u)), reverseBits(min(1i, -8311i)), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(-2147483647i, -16056i))), arg_0));
    return func_3();
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = u_input.c;
    global2 = true;
    var var_1 = Struct_1(countOneBits(func_2(vec4<i32>(i32(-1i) * -17997i, 0i, ~u_input.b, _wgslsmith_add_i32(-1i, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-987f, -345f)))), arg_0.zx);
    var var_2 = Struct_1(firstLeadingBit(var_1.a), vec2<bool>(any(!select(vec2<bool>(global0.x, global0.x), var_1.b, var_1.b)), !global0.x));
    let var_3 = Struct_1(max(0u, 4294967295u), vec2<bool>(true, any(select(!vec4<bool>(false, global0.x, var_2.b.x, global0.x), !vec4<bool>(true, false, true, var_2.b.x), select(vec4<bool>(false, false, false, var_1.b.x), vec4<bool>(true, arg_0.x, false, global0.x), false)))));
    return abs(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1926f;
    var var_1 = min(1u, 1u);
    let var_2 = Struct_1(~select(_wgslsmith_mod_u32(~48794u, func_1(vec3<bool>(global0.x, global0.x, true))), ~1u, false), vec2<bool>(global0.x, -1i != u_input.a.x));
    let var_3 = vec4<i32>(-1i, 2147483647i, _wgslsmith_sub_i32(min(reverseBits(1i), u_input.b), -abs(0i)), countOneBits(u_input.a.x));
    global0 = select(!var_2.b, vec2<bool>(all(!(!var_2.b)), var_2.b.x), true);
    let var_4 = vec2<bool>(var_2.b.x, var_2.b.x || !any(!vec4<bool>(var_2.b.x, global0.x, true, var_2.b.x)));
    var var_5 = var_2;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(1000f, 1818f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1590f), -428f) + -145f)));
    let x = u_input.a;
    s_output = StorageBuffer(641i);
}

