struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: array<Struct_1, 6>;

var<private> global2: bool = true;

var<private> global3: i32;

var<private> global4: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(3269i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 11283i), vec2<i32>(2147483647i, 12364i), vec2<i32>(-1i, -48114i), vec2<i32>(-1i, 1i), vec2<i32>(0i, -2263i), vec2<i32>(-18283i, -26187i), vec2<i32>(1111i, 82397i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-23602i, 21401i), vec2<i32>(i32(-2147483648), -8176i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, -11988i), vec2<i32>(0i, 2147483647i), vec2<i32>(-16664i, i32(-2147483648)), vec2<i32>(-1517i, 1i), vec2<i32>(1i, -23528i), vec2<i32>(-12410i, -1i), vec2<i32>(1i, -40663i), vec2<i32>(-46376i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<bool>) -> bool {
    var var_0 = ~17296u;
    var var_1 = Struct_1(vec4<bool>(true, !global0.x, true, false), arg_0.b);
    let var_2 = Struct_1(var_1.a, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x >> (u_input.e % 32u), firstTrailingBit(8296u), u_input.e), vec3<u32>(27859u, _wgslsmith_add_u32(u_input.c, var_1.b.x), select(18700u, var_1.b.x, false))), vec3<u32>(arg_0.b.x, 0u, _wgslsmith_mult_u32(var_1.b.x, 19369u))));
    global0 = var_2.a;
    var_0 = 4294967295u;
    return arg_0.a.x || ((true && (145f == _wgslsmith_div_f32(arg_1.x, arg_1.x))) && (reverseBits(u_input.b) >= _wgslsmith_div_i32(2147483647i, u_input.a.x << (u_input.e % 32u))));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    global2 = true;
    let var_0 = select(select(global0.zww, !(!global0.xwy), vec3<bool>(!any(vec3<bool>(global0.x, false, false)), ~u_input.c <= ~36684u, arg_0)), !global0.yzw, !vec3<bool>(func_3(global1[_wgslsmith_index_u32(~4294967295u, 6u)], vec3<f32>(-986f, 551f, 655f), select(global0.xyx, vec3<bool>(arg_0, arg_0, arg_0), arg_0)), false, global0.x == true));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1004f, _wgslsmith_f_op_f32(floor(-462f)))) - -1488f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    let var_0 = Struct_1(select(select(select(select(vec4<bool>(false, arg_0, global0.x, false), vec4<bool>(global0.x, false, true, arg_0), vec4<bool>(arg_2.x, global0.x, global0.x, true)), vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(false, arg_0, true, true)), !select(vec4<bool>(global0.x, arg_0, arg_2.x, arg_0), vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, false, true, arg_2.x)), !global0.x), vec4<bool>(global0.x, all(!global0.xyz), !global0.x & true, true), all(!select(vec4<bool>(false, global0.x, true, arg_0), vec4<bool>(false, false, global0.x, arg_2.x), false))), vec3<u32>(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(~37850u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 10598u), vec2<u32>(u_input.c, u_input.e)), ~vec2<u32>(u_input.e, u_input.e))), ~0u));
    let var_1 = !(!global0.zyy);
    let var_2 = 1f;
    global0 = var_0.a;
    global4 = array<vec2<i32>, 21>();
    return _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(u_input.e, u_input.c));
}

fn func_1(arg_0: u32) -> f32 {
    global1 = array<Struct_1, 6>();
    var var_0 = !select(vec4<bool>(_wgslsmith_sub_u32(u_input.c, 0u) >= firstLeadingBit(64039u), global0.x | (u_input.e <= 50961u), false, true), select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, global0.x, false, global0.x), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x)), select(vec4<bool>(true, true, true, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, true), true), all(global0.xy)), true), select(vec4<bool>(all(vec4<bool>(true, global0.x, global0.x, global0.x)), false, any(global0.xxw), any(global0.wxy)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, false)), select(vec4<bool>(false, global0.x, true, false), vec4<bool>(false, false, global0.x, false), global0.x), vec4<bool>(true, false, global0.x, global0.x)), global0.x));
    var var_1 = var_0.xz;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.e, reverseBits(abs(u_input.c)), 1u), vec4<u32>(_wgslsmith_mult_u32(~arg_0, select(u_input.c, max(u_input.c, arg_0), var_0.x)), ~4294967295u, func_4(global0.x, _wgslsmith_f_op_vec3_f32(func_2(var_0.x)), !var_0.zx, _wgslsmith_f_op_f32(789f * -665f)) >> (~arg_0 % 32u), arg_0)), 6u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-365f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-624f, -309f) + -376f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(~u_input.c)), -1259f)));
    global2 = any(select(vec2<bool>(any(select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(false, true, true, global0.x), global0.x)), true), !global0.yz, true));
    global0 = !select(!vec4<bool>(!global0.x, global0.x, true, var_0.x <= 1480f), !vec4<bool>(false != global0.x, all(global0.xxx), global0.x, global0.x), global0.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + var_0.x)), true)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(all(global0.zzy))).x))) - var_0.x);
    global4 = array<vec2<i32>, 21>();
    global0 = select(!(!vec4<bool>(!global0.x, false, all(vec4<bool>(true, false, global0.x, true)), var_0.x >= 1693f)), select(select(vec4<bool>(any(vec4<bool>(global0.x, false, false, global0.x)), func_3(global1[_wgslsmith_index_u32(25012u, 6u)], vec3<f32>(-958f, 1819f, var_0.x), global0.xyw), true, any(global0.zz)), vec4<bool>(true, global0.x, !global0.x, any(vec4<bool>(false, global0.x, global0.x, global0.x))), true | (false == global0.x)), !vec4<bool>(true, !global0.x, true, true), !func_3(Struct_1(vec4<bool>(false, true, global0.x, false), vec3<u32>(u_input.c, u_input.e, u_input.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, 1211f, 1000f)), global0.wzz)), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, global0.x, true, global0.x), global0.x), !vec4<bool>(true, global0.x, global0.x, false)), select(select(vec4<bool>(true, global0.x, true, global0.x), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x)), global0.x), vec4<bool>(any(vec4<bool>(global0.x, true, global0.x, false)), global0.x, false, !global0.x), any(vec3<bool>(global0.x, false, true))), !select(select(vec4<bool>(global0.x, true, false, true), vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x)), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, true, global0.x, false), global0.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_u32(0u, firstTrailingBit(26700u)) ^ firstTrailingBit(~4294967295u), u_input.e));
}

