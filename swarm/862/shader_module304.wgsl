struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -886f;

var<private> global1: array<f32, 7>;

var<private> global2: array<Struct_4, 13>;

var<private> global3: Struct_4;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: f32) -> Struct_5 {
    return Struct_5(u_input.a);
}

fn func_2(arg_0: i32, arg_1: i32) -> i32 {
    global1 = array<f32, 7>();
    var var_0 = _wgslsmith_div_vec3_i32(~min(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), 1i, 0i), vec3<i32>(~25697i, -44972i, 54920i)), -_wgslsmith_mult_vec3_i32(~u_input.b.wzy, -vec3<i32>(arg_1, -2147483647i, u_input.b.x)) & -select(u_input.b.zwz ^ vec3<i32>(global3.b, global3.b, u_input.b.x), abs(vec3<i32>(-1i, arg_0, arg_0)), false));
    let var_1 = global3.c.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1620f, 400f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f - global1[_wgslsmith_index_u32(u_input.a, 7u)]) * -424f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * -2044f)))))));
    var var_3 = Struct_1(vec4<bool>(!global3.a.d.x & !(1u != u_input.a), global3.a.a, false, global3.a.a), global1[_wgslsmith_index_u32(u_input.a, 7u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3.c.x)))))));
    return 0i & (-1i | (var_0.x << (abs(~u_input.a) % 32u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> bool {
    global2 = array<Struct_4, 13>();
    global3 = global2[_wgslsmith_index_u32(u_input.a, 13u)];
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.b, _wgslsmith_div_f32(1f, global3.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(74014u, 7u)] - -359f)))));
    global3 = global2[_wgslsmith_index_u32(abs(~(~(~(~0u)))), 13u)];
    let var_1 = global3.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 7u)]));
    let var_1 = global3.a.d.x || global3.a.a;
    var var_2 = global3.a.c;
    var var_3 = select(select(select(!select(vec4<bool>(var_1, global3.a.a, var_1, global3.a.d.x), vec4<bool>(true, global3.a.a, true, var_1), vec4<bool>(false, false, false, true)), vec4<bool>(any(vec2<bool>(true, var_1)), true, var_1, global3.b <= u_input.b.x), select(vec4<bool>(true, true, global3.a.d.x, false), vec4<bool>(global3.a.a, var_1, global3.a.d.x, var_1), !global3.a.a)), vec4<bool>(all(global3.a.d), false, all(vec2<bool>(false, false)) | all(global3.a.d.zz), func_3(vec2<bool>(var_1, global3.a.a), func_2(global3.b, -1i))), true), vec4<bool>(u_input.b.x >= u_input.b.x, true, any(!select(global3.a.d.yx, vec2<bool>(false, true), true)), false), vec4<bool>(all(vec2<bool>(var_1, global1[_wgslsmith_index_u32(var_0.a, 7u)] <= global1[_wgslsmith_index_u32(u_input.a, 7u)])), global3.a.a, func_3(select(select(vec2<bool>(true, true), vec2<bool>(global3.a.a, global3.a.d.x), vec2<bool>(true, global3.a.d.x)), global3.a.d.zy, var_1 & true), 2147483647i), all(vec2<bool>(true, var_1 && false))));
    var_3 = !select(select(!select(vec4<bool>(false, true, global3.a.a, false), vec4<bool>(var_3.x, false, false, var_1), var_1), vec4<bool>(!global3.a.d.x, true, !var_1, all(vec3<bool>(global3.a.d.x, true, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(global3.a.a, var_3.x, var_3.x, global3.a.a), vec4<bool>(global3.a.a, false, true, var_3.x))), !vec4<bool>(true, func_3(vec2<bool>(false, var_1), -2147483647i), !global3.a.a, true), any(var_3.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.a, var_0.a, 4294967295u, u_input.a) >> (vec4<u32>(44979u, u_input.a, var_0.a, 23541u) % vec4<u32>(32u))) & vec4<u32>(var_0.a | 4294967295u, 4294967295u, 4294967295u, 4294967295u), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(18114u, u_input.a, 0u, 1u), vec4<u32>(var_0.a, 4202u, 69711u, 5496u) | vec4<u32>(u_input.a, var_0.a, u_input.a, 24348u))), var_0.a, _wgslsmith_div_vec3_u32(vec3<u32>(~0u, 40394u, ~1u), ~(~select(vec3<u32>(22462u, u_input.a, 85303u), vec3<u32>(1u, 13433u, 23805u), true))), -u_input.b.x);
}

