struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: f32 = -1008f;

var<private> global2: Struct_1;

var<private> global3: bool = false;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = vec4<bool>(false, any(vec2<bool>(true, true)) & any(arg_0.c.d.wwx), any(select(vec2<bool>(false | arg_0.c.d.x, false), !(!vec2<bool>(arg_0.c.d.x, false)), global2.d.x)), false);
    let var_2 = Struct_2(all(vec2<bool>(arg_0.c.d.x, true)), -196f, arg_0.c, _wgslsmith_f_op_f32(select(global2.b, _wgslsmith_f_op_f32(-global2.a), true)));
    let var_3 = false;
    global1 = _wgslsmith_f_op_f32(-global2.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a)) - _wgslsmith_f_op_f32(-var_2.b));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = ~arg_0.x;
    global3 = global2.d.x && (false || any(global2.d));
    let var_1 = u_input.b;
    let var_2 = Struct_2(global2.d.x, -1217f, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(32888u, 12u)] <= 1i, _wgslsmith_f_op_f32(f32(-1f) * -520f), Struct_1(global2.a, -1166f, 2147483647i, global2.d), _wgslsmith_f_op_f32(floor(763f))), vec4<u32>(countOneBits(u_input.c), ~u_input.c, _wgslsmith_add_u32(u_input.c, 1u), 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b)))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, var_1.x, var_1.x, global2.c)), select(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i, var_1.x, u_input.b.x), vec4<i32>(0i, 1i, -44992i, -2147483647i), global2.d)), select(!select(global2.d, global2.d, global2.d.x), global2.d, select(vec4<bool>(false, true, global2.d.x, global2.d.x), global2.d, vec4<bool>(true, global2.d.x, global2.d.x, global2.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-113f))));
    var var_3 = vec3<bool>(var_2.a, var_2.a, global2.d.x);
    return _wgslsmith_mult_u32(4294967295u, u_input.a.x | 27616u);
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = global2.d.x & !(0u >= func_2(~vec2<i32>(-2147483647i, 2147483647i)));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(exp2(global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) + global2.b), ~(-2147483647i), vec4<bool>(true, true, !((30095u >> (u_input.c % 32u)) <= (arg_0.x << (u_input.a.x % 32u))), !(!(u_input.c > u_input.c))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(322f, 997f, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - global2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) * _wgslsmith_f_op_f32(global2.b + 1122f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-global2.b)) - global2.b))), global0[_wgslsmith_index_u32(func_2(vec2<i32>(firstTrailingBit(39976i >> (u_input.c % 32u)), max(u_input.b.x, ~19597i))), 12u)], select(vec4<bool>(u_input.b.x != _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.c), vec2<i32>(1i, u_input.b.x)), true, global2.d.x, false), select(vec4<bool>(false, global2.d.x, u_input.a.x > u_input.a.x, global2.d.x), vec4<bool>(!global2.d.x, any(vec3<bool>(global2.d.x, global2.d.x, global2.d.x)), true, true), !(!global2.d.x)), true));
    var var_2 = select(vec2<bool>(true, true), select(vec2<bool>(all(!var_1.d), false), global2.d.xx, var_1.d.x), select(!var_1.d.zw, select(!vec2<bool>(true, var_1.d.x), vec2<bool>(false, global2.d.x), global2.d.x), var_1.d.zz));
    global2 = var_1;
    return vec3<bool>(true, var_2.x, all(global2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(!(!global2.d.yww)), global2.d.x, all(global2.d.xzz));
    var_0 = select(global2.d.xwx, global2.d.ywy, func_1(u_input.a));
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b))))))));
    let var_1 = Struct_2(true, global2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * -549f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_i32(reverseBits(u_input.b.x), -global2.c), vec4<bool>(83902u == ~u_input.a.x, all(vec4<bool>(var_0.x, var_0.x, global2.d.x, global2.d.x)), global2.d.x || func_1(vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)).x, any(select(global2.d.zx, global2.d.xz, vec2<bool>(global2.d.x, false))))), -375f);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a))), var_1.c, -1501f), ~(~max(vec4<u32>(74076u, u_input.a.x, 0u, u_input.c), u_input.a))))));
    var var_3 = Struct_2(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(func_3(Struct_2(var_0.x, 1f, Struct_1(652f, 1783f, 2147483647i, global2.d), -134f), vec4<u32>(51759u, _wgslsmith_mult_u32(0u, 53054u), u_input.a.x, _wgslsmith_mult_u32(12905u, u_input.c))))), Struct_1(-1021f, -1332f, -31840i, vec4<bool>(global2.d.x, firstLeadingBit(u_input.c) > ~u_input.c, global2.d.x, true)), _wgslsmith_f_op_f32(819f - _wgslsmith_f_op_f32(f32(-1f) * -922f)));
    let var_4 = vec2<f32>(var_1.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.d))));
    var var_5 = vec3<u32>(u_input.c, _wgslsmith_add_u32(1u, 68177u), ~1u);
    var var_6 = countOneBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(round(var_4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-509f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(-265f * var_4.x)))), firstLeadingBit(abs(countOneBits(~20546i))), _wgslsmith_sub_vec2_i32(firstLeadingBit(~u_input.b.xz), u_input.b.yy << (~(vec2<u32>(4294967295u, 0u) >> (vec2<u32>(var_5.x, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(-6422i, -var_1.c.c) << (~reverseBits(u_input.a.xy) % vec2<u32>(32u)));
}

