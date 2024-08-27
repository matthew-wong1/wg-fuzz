struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32 = 57537u;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(50624u, -1095f, -55941i, vec4<bool>(false, false, true, false)), Struct_1(0u, -697f, 0i, vec4<bool>(false, false, false, false)), Struct_1(49093u, 1000f, -55675i, vec4<bool>(true, false, true, false)), Struct_1(13522u, -1537f, 11355i, vec4<bool>(false, false, true, true)), Struct_1(5650u, 1853f, 2147483647i, vec4<bool>(false, true, false, false)), Struct_1(4294967295u, -295f, i32(-2147483648), vec4<bool>(false, false, true, false)), Struct_1(0u, -190f, 8457i, vec4<bool>(false, true, true, false)), Struct_1(0u, 291f, 0i, vec4<bool>(true, true, false, false)), Struct_1(4294967295u, -619f, -29736i, vec4<bool>(false, false, false, false)), Struct_1(80650u, 950f, -44925i, vec4<bool>(false, false, false, false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<u32> {
    global1 = countOneBits(1u);
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1006f - arg_1.b)))));
    global3 = array<Struct_1, 10>();
    var_0 = 0u;
    return ~firstLeadingBit(reverseBits(~_wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(arg_0.a, arg_0.a))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.d.x;
    global0 = vec3<bool>(true, any(global2.d.yz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-180f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1113f * _wgslsmith_f_op_f32(trunc(1216f)))));
    let var_1 = global2.d.x;
    var var_2 = -28511i >> (u_input.a % 32u);
    var var_3 = ~abs(max(~(~vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, global2.c)), vec4<i32>(arg_0.c, -1i | u_input.b.x, arg_0.c, arg_0.c)));
    return all(!vec3<bool>(any(!arg_0.d.zxx), global2.d.x, global2.d.x));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(func_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(19170u, 46836u, u_input.d), vec3<u32>(0u, 48865u, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1062f), global2.c & 2147483647i, !global2.d), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global2.a, arg_0), 32279u), 10u)], _wgslsmith_mod_u32(global2.a, ~58024u)), ~u_input.c.xy | (~vec2<u32>(902u, u_input.a) ^ max(vec2<u32>(4294967295u, 1u), vec2<u32>(59373u, 1u)))), 692f, -global2.c, vec4<bool>(true && func_3(global3[_wgslsmith_index_u32(~u_input.a, 10u)]), !all(global2.d), global0.x, all(global2.d.xwx) && all(select(global2.d.wy, vec2<bool>(global0.x, true), vec2<bool>(false, true)))));
    return vec3<bool>(false, global2.d.x, global2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(4294967295u);
    global2 = Struct_1(_wgslsmith_add_u32(u_input.a, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, global2.a))), _wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(global2.b * -1039f)), ~_wgslsmith_mult_i32(20350i, -1i), vec4<bool>(global2.d.x, global0.x, _wgslsmith_div_u32(12456u & u_input.a, abs(global2.a)) >= 43665u, true));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(700f, global2.b)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1357f, global2.b), vec2<f32>(global2.b, 548f)))))) - vec2<f32>(_wgslsmith_f_op_f32(step(1000f, -314f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + 144f) * -719f))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1083f, var_0.x)))) * vec2<f32>(-1066f, var_0.x))))));
    let var_1 = global3[_wgslsmith_index_u32(75436u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_div_f32(_wgslsmith_div_f32(558f, -964f), _wgslsmith_div_f32(-931f, _wgslsmith_f_op_f32(1f + global2.b))), vec4<f32>(_wgslsmith_f_op_f32(-1695f - _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(223f))), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b)))));
}

