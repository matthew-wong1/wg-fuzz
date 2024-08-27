struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: u32;

var<private> global2: u32 = 81155u;

var<private> global3: array<Struct_4, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec3<bool> {
    var var_0 = 871f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1304f)) * _wgslsmith_f_op_f32(380f - arg_0));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(324f * 115f)))))), arg_0);
    let var_2 = true;
    global2 = reverseBits(_wgslsmith_mod_u32(~1u, ~103337u));
    return arg_1.a.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(!select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_2.a.x), true)), arg_2, Struct_1(func_3(_wgslsmith_f_op_f32(floor(264f)), Struct_5(Struct_4(Struct_2(Struct_1(vec3<bool>(false, arg_2.a.x, true)), Struct_1(vec3<bool>(true, false, true)), arg_2), vec3<bool>(false, false, arg_2.a.x), Struct_2(arg_2, arg_2, arg_2), Struct_2(arg_2, Struct_1(vec3<bool>(arg_2.a.x, true, arg_2.a.x)), Struct_1(vec3<bool>(false, false, true)))), Struct_4(Struct_2(arg_2, arg_2, arg_2), vec3<bool>(true, arg_2.a.x, true), Struct_2(arg_2, arg_2, arg_2), Struct_2(arg_2, Struct_1(vec3<bool>(true, false, arg_0.x)), arg_2)), u_input.c, global0[_wgslsmith_index_u32(arg_1.x, 31u)], arg_0)))), Struct_1(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -165f))), Struct_5(global3[_wgslsmith_index_u32(abs(26793u), 11u)], Struct_4(Struct_2(Struct_1(vec3<bool>(arg_0.x, false, true)), arg_2, Struct_1(vec3<bool>(arg_2.a.x, arg_0.x, true))), vec3<bool>(arg_0.x, arg_2.a.x, arg_2.a.x), Struct_2(arg_2, arg_2, arg_2), Struct_2(arg_2, Struct_1(arg_2.a), arg_2)), ~u_input.c, 66796u, arg_0))));
    var var_1 = var_0.a;
    var var_2 = Struct_2(arg_2, Struct_1(!vec3<bool>(false, false, all(vec4<bool>(var_1.c.a.x, true, false, false)))), var_0.b);
    global3 = array<Struct_4, 11>();
    let var_3 = min(-max(48725i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(0i, u_input.c))), ~(~_wgslsmith_div_i32(~(-29101i), _wgslsmith_clamp_i32(u_input.c, 1i, 1i))));
    return var_0.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> Struct_5 {
    global3 = array<Struct_4, 11>();
    let var_0 = global3[_wgslsmith_index_u32(17082u, 11u)];
    var var_1 = 41385i;
    let var_2 = var_0.d.c;
    global1 = 5093u;
    return Struct_5(Struct_4(func_2(vec2<bool>(245f < arg_3.x, var_0.b.x || var_0.b.x), ~vec2<u32>(global0[_wgslsmith_index_u32(77058u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]), var_0.a.a), select(var_2.a, !(!var_2.a), all(var_2.a.zz)), func_2(!vec2<bool>(true, var_2.a.x), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yy, vec2<u32>(28183u, 0u)), u_input.b.xz), func_2(!vec2<bool>(var_2.a.x, true), vec2<u32>(4294967295u, 8715u), var_0.c.a).a), Struct_2(Struct_1(var_2.a), var_0.c.a, func_2(vec2<bool>(true, arg_1), ~u_input.b.xz, func_2(var_2.a.yz, u_input.b.zz, var_0.c.a).b).b)), global3[_wgslsmith_index_u32(abs(82133u), 11u)], u_input.c, 4294967295u, select(var_2.a.yy, vec2<bool>(true, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    let var_1 = func_1(~(-vec4<i32>(u_input.c, 2147483647i, 35974i, ~9678i)), select(true, false, 4294967295u < _wgslsmith_add_u32(u_input.d ^ 35360u, 8291u)), all(vec4<bool>(true, var_0.x, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), false)), select(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-599f, 966f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-1185f + 181f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 442f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(651f, 1426f) * vec2<f32>(368f, -1000f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-788f, -1000f))))))));
    var var_2 = firstTrailingBit(1u);
    global2 = u_input.d;
    global0 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-1667f, _wgslsmith_mod_i32(-37742i, ~(~u_input.c)), ~max(min(vec4<i32>(var_1.c, 1i, u_input.c, var_1.c) ^ vec4<i32>(var_1.c, u_input.c, u_input.c, var_1.c), vec4<i32>(var_1.c, 43640i, var_1.c, u_input.c)), vec4<i32>(firstLeadingBit(u_input.c), _wgslsmith_sub_i32(var_1.c, -2147483647i), ~u_input.c, -1i)));
}

