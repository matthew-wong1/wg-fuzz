struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: Struct_3;

var<private> global3: array<bool, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global3 = array<bool, 30>();
    return u_input.d;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1946f, global2.b.x, _wgslsmith_f_op_f32(global0.x * -1000f)))), select(select(vec3<bool>(false & arg_3.b.x, false != arg_3.b.x, false && arg_2.x), arg_3.b, arg_3.b), select(arg_3.b, !(!vec3<bool>(arg_3.b.x, true, true)), !select(vec3<bool>(arg_1.x, false, arg_2.x), vec3<bool>(arg_1.x, true, true), vec3<bool>(global3[_wgslsmith_index_u32(arg_3.c.x, 30u)], global3[_wgslsmith_index_u32(0u, 30u)], global1.x))), arg_3.b), reverseBits(_wgslsmith_mod_vec4_u32(arg_3.c, vec4<u32>(_wgslsmith_mult_u32(36479u, arg_3.c.x), ~u_input.c.x, arg_3.d.x, _wgslsmith_mod_u32(59241u, u_input.c.x)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(16536u, 0u, arg_3.c.x), vec3<u32>(16676u, u_input.a.x, 0u))), ~min(u_input.e, vec2<u32>(u_input.a.x, 1u) << (vec2<u32>(arg_3.d.x, u_input.e.x) % vec2<u32>(32u))), ~vec2<u32>(~arg_3.c.x, arg_3.d.x)));
    var var_1 = !select(!vec3<bool>(all(vec4<bool>(true, false, false, true)), false, true), !select(select(arg_2.xxw, vec3<bool>(global1.x, false, var_0.b.x), arg_2.xww), select(arg_3.b, vec3<bool>(true, var_0.b.x, false), true), arg_3.b.x), arg_1.x);
    var_1 = arg_2.xyy;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(global2.b.x, var_0.a.x)), all(select(vec3<bool>(true, false, var_0.b.x), vec3<bool>(false, true, arg_1.x), true))))), _wgslsmith_mult_vec2_u32(((vec2<u32>(u_input.e.x, arg_3.d.x) ^ vec2<u32>(arg_3.c.x, u_input.a.x)) << (_wgslsmith_sub_vec2_u32(var_0.c.yy, u_input.b) % vec2<u32>(32u))) << (arg_3.c.wz % vec2<u32>(32u)), vec2<u32>(abs(arg_3.d.x), u_input.b.x)));
    global1 = select(vec3<bool>(all(!select(arg_2.zzz, vec3<bool>(true, true, false), false)), !all(select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(false, false, arg_1.x), vec3<bool>(true, false, false))), global3[_wgslsmith_index_u32(15308u, 30u)]), !arg_2.zwz, global3[_wgslsmith_index_u32(1u | abs(select(50844u, 1u, true) >> (~arg_3.c.x % 32u)), 30u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1152f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(min(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -819f))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> i32 {
    global2 = arg_1;
    var var_0 = arg_1;
    var var_1 = true;
    let var_2 = Struct_3(-583f, _wgslsmith_f_op_vec4_f32(arg_1.b + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1343f, -117f, 821f, 139f), vec4<f32>(227f, -946f, 247f, 180f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global2.b))))), firstTrailingBit(62983i));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.xyx + var_2.b.zyz) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.wyz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 2324f, -337f))) - _wgslsmith_f_op_vec3_f32(-global2.b.xwy))), !(!vec3<bool>(all(vec2<bool>(global1.x, global3[_wgslsmith_index_u32(u_input.b.x, 30u)])), global1.x, select(false, true, global1.x))), abs(vec4<u32>(u_input.c.x, _wgslsmith_add_u32(4294967295u, u_input.c.x >> (1u % 32u)), 1u, _wgslsmith_mod_u32(countOneBits(u_input.a.x), ~u_input.c.x))), _wgslsmith_mod_vec2_u32(u_input.c, u_input.a));
    return _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(select(firstTrailingBit(vec4<i32>(var_2.c, global2.c, -28547i, var_0.c)), vec4<i32>(global2.c, var_0.c, -81367i, var_2.c), any(var_3.b)), max(-vec4<i32>(0i, var_0.c, -1i, 60684i), vec4<i32>(-85928i, -22134i, var_0.c, global2.c) << (var_3.c % vec4<u32>(32u))))), _wgslsmith_dot_vec4_i32(abs(~(-vec4<i32>(-278i, global2.c, arg_0.x, -2147483647i))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, -311i, 1i) >> (var_3.c % vec4<u32>(32u)), ~vec4<i32>(1i, arg_1.c, 1i, 0i), vec4<i32>(1i, -29215i, -2147483647i, var_2.c))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: u32) -> bool {
    var var_0 = global2.b.xy;
    var var_1 = Struct_2(vec3<f32>(var_0.x, 180f, -1000f), !(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 30u)] | global3[_wgslsmith_index_u32(15863u, 30u)], 2147483647i >= arg_2.d, false)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, arg_1.c.x, u_input.e.x, 2111u)), ~firstLeadingBit(arg_1.c)), min(arg_1.c, vec4<u32>(max(arg_1.c.x, 0u), ~arg_1.d.x, arg_3, arg_1.d.x))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(arg_1.c.ww, u_input.c), u_input.a, vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(7496u, arg_3, 0u, 0u), vec4<u32>(u_input.e.x, 60654u, arg_1.c.x, u_input.a.x)))) ^ ~firstTrailingBit(select(arg_1.c.zx, u_input.c, arg_1.b.x)));
    global3 = array<bool, 30>();
    return global3[_wgslsmith_index_u32(arg_1.c.x, 30u)];
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> bool {
    return !func_5(func_4(vec2<i32>(arg_2.x, u_input.d), Struct_3(_wgslsmith_f_op_f32(func_3(arg_1, global1.xx, vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 30u)], true, global1.x), Struct_2(vec3<f32>(global2.b.x, global0.x, 594f), vec3<bool>(true, false, true), vec4<u32>(u_input.a.x, u_input.e.x, u_input.e.x, u_input.b.x), vec2<u32>(u_input.c.x, 107285u)))), _wgslsmith_f_op_vec4_f32(global2.b + global2.b), -1i)), Struct_2(_wgslsmith_f_op_vec3_f32(global2.b.xzy * global2.b.xyy), vec3<bool>(true, !global3[_wgslsmith_index_u32(0u, 30u)], global1.x), max(~vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(u_input.c.x, 15719u, u_input.b.x, u_input.e.x) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.a.x)), u_input.b), Struct_4(global1.x, _wgslsmith_clamp_vec2_i32(arg_2, arg_2, ~vec2<i32>(1i, -15052i)), select(vec2<bool>(true, global1.x), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 30u)], false), global3[_wgslsmith_index_u32(u_input.b.x & u_input.e.x, 30u)]), 2147483647i >> (u_input.b.x % 32u), 826f), _wgslsmith_div_u32(reverseBits(0u), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(496f, _wgslsmith_f_op_vec3_f32(-global2.b.yxz), firstLeadingBit(vec2<i32>(reverseBits(func_1(vec4<u32>(0u, 4294967295u, 107869u, 1u))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, -2147483647i, -1i), vec4<i32>(global2.c, u_input.d, u_input.d, u_input.d)))));
    global1 = vec3<bool>(!any(!(!vec3<bool>(true, global1.x, global1.x))), global1.x & any(!(!vec4<bool>(true, global1.x, global3[_wgslsmith_index_u32(u_input.b.x, 30u)], true))), all(vec4<bool>(true, true, true, true)));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(281f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -285f), 1289f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -2083f))), 419f)));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, min(_wgslsmith_sub_u32(u_input.b.x, u_input.c.x), ~4294967295u), ~(~u_input.c.x)), ~(firstLeadingBit(vec3<u32>(u_input.b.x, 74031u, 4294967295u)) | firstLeadingBit(vec3<u32>(u_input.e.x, 4294967295u, 0u)))), u_input.b.x), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(740f)) - _wgslsmith_f_op_f32(max(global2.b.x, global2.a))))), -1000f), global2.b.x, vec2<u32>(u_input.e.x, 0u));
}

