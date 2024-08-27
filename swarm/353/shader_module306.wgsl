struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(i32(-2147483648), 48984i, i32(-2147483648));

var<private> global1: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_4(Struct_2(-firstTrailingBit(vec4<i32>(3704i, -28000i, u_input.b, -1i) | global1.a.a), _wgslsmith_f_op_f32(sign(global1.c.x))), _wgslsmith_f_op_vec3_f32(max(global1.b, _wgslsmith_f_op_vec3_f32(ceil(global1.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)));
    var var_1 = 1u >> (~reverseBits(u_input.c.x) % 32u);
    let var_2 = Struct_3(Struct_2(abs(-countOneBits(global1.a.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -235f)), _wgslsmith_f_op_f32(exp2(var_0.b.x)) != _wgslsmith_f_op_f32(-1086f * 641f)))), -_wgslsmith_dot_vec4_i32(arg_1.b ^ ~global1.a.a, -(~vec4<i32>(0i, 6738i, 1i, 18287i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.b), -1855f)) * 1783f)));
    return any(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false), !(64431i != arg_2.x)));
}

fn func_2() -> i32 {
    let var_0 = false;
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.a.b, global1.c.x)))))), -(global1.a.a ^ (vec4<i32>(-5439i, 29535i, -1i, u_input.b) ^ global1.a.a)));
    let var_2 = vec2<bool>(!(func_3(Struct_2(vec4<i32>(u_input.b, u_input.b, 2147483647i, var_1.b.x), var_1.a.a), Struct_5(var_1.a, vec4<i32>(32269i, var_1.b.x, 51473i, 25131i)), ~var_1.b.yw, vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.d.x, 3u)])) && var_0), !(!(!select(false, true, true))));
    global1 = Struct_4(global1.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1459f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * var_1.a.a) * 142f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-878f, global1.b.x)))), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a, global1.c.x)) - -1475f) * _wgslsmith_f_op_f32(floor(-493f))), _wgslsmith_f_op_f32(f32(-1f) * -209f)));
    let var_3 = Struct_2(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) * _wgslsmith_f_op_f32(-global1.a.b))));
    return u_input.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = !(!(!(!arg_0.yx)));
    var var_1 = func_2();
    global1 = arg_2;
    let var_2 = u_input.b;
    global0 = array<i32, 3>();
    return select(!(!arg_0.zy), !(!arg_0.zy), arg_0.x & (false & !any(vec4<bool>(var_0.x, true, false, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = !select(select(!func_1(vec3<bool>(false, true, true), u_input.c, Struct_4(Struct_2(global1.a.a, global1.a.b), vec3<f32>(-639f, -604f, global1.c.x), global1.c)), func_1(vec3<bool>(true, true, true), ~vec4<u32>(0u, 0u, 0u, 1u), Struct_4(global1.a, vec3<f32>(-1407f, global1.b.x, -1490f), global1.c)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    var var_2 = !any(!(!vec3<bool>(var_1.x, false, false)));
    var_2 = all(select(vec2<bool>((-20242i <= u_input.b) && any(vec4<bool>(true, true, var_1.x, var_1.x)), func_1(!vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<u32>(u_input.a.x, 24877u, 1u, u_input.c.x), Struct_4(global1.a, vec3<f32>(183f, 1424f, global1.a.b), global1.c)).x), !(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true))), any(vec4<bool>(var_1.x, true, false, var_1.x)) && var_1.x));
    var_2 = true & var_1.x;
    global1 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, global1.c.x, global1.b.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global1.b)), global1.b, all(vec4<bool>(var_1.x, false, false, false))))), _wgslsmith_f_op_vec3_f32(-global1.c))));
    var var_3 = select(all(vec2<bool>(any(!var_1), true)), true, !var_1.x);
    global1 = Struct_4(global1.a, global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.c.x, global1.c.x, global1.c.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.x)) * _wgslsmith_f_op_f32(global1.b.x + global1.c.x)), _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(1057f, global1.b.x)), _wgslsmith_f_op_f32(-global1.a.b))));
    var var_4 = !(!select(!select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, true)), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, var_1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a, _wgslsmith_sub_i32(min(abs(reverseBits(31651i)), ~(-u_input.b)), -2147483647i));
}

