struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2;

var<private> global1: u32 = 1u;

var<private> global2: u32;

var<private> global3: array<Struct_1, 28>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = !select(select(vec4<bool>(true, true, !arg_0.x, all(vec3<bool>(arg_0.x, true, true))), !select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x)), vec4<bool>(false, false, arg_0.x, true)), vec4<bool>(!any(vec3<bool>(arg_0.x, false, false)), arg_0.x, select(all(vec4<bool>(arg_0.x, true, true, false)), arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), arg_0.x), !(!(!vec4<bool>(true, arg_0.x, true, arg_0.x))));
    let var_1 = 1u;
    return reverseBits(var_1);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1000f - arg_1.b.a)) - arg_0)), 1446f);
    let var_1 = select(arg_1.a.c, vec3<bool>(arg_1.a.e, arg_1.a.c.x, ~min(arg_1.d, 1u) >= (~42745u & _wgslsmith_div_u32(u_input.a, 45003u))), vec3<bool>(all(vec2<bool>(true, true)), any(select(select(vec4<bool>(false, true, arg_1.a.e, arg_1.a.e), vec4<bool>(arg_1.a.c.x, arg_1.a.e, arg_1.a.e, true), arg_1.a.c.x), select(vec4<bool>(false, arg_1.a.e, true, arg_1.a.e), vec4<bool>(true, arg_1.a.c.x, true, arg_1.a.c.x), arg_1.a.e), select(vec4<bool>(true, arg_1.a.c.x, true, arg_1.a.c.x), vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, false, true), vec4<bool>(arg_1.a.c.x, true, true, false)))), true));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, -281f, any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))))))));
    let var_3 = arg_1;
    var_2 = arg_1.b;
    return arg_1.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = func_4(578f, Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u, 1u), ~vec3<u32>(66235u, 1096u, arg_1.x)), func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 1000f) * vec2<f32>(-2262f, global0.a)))), 28u)], Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + -169f) - _wgslsmith_f_op_f32(floor(1620f)))), func_3(firstTrailingBit(_wgslsmith_div_u32(arg_1.x, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(816f, -949f)), -347f, _wgslsmith_f_op_f32(-249f * 1000f)), Struct_1(vec3<i32>(arg_0.x, 13112i, arg_0.x), 28925i >> (u_input.a % 32u), vec3<bool>(true, true, true), -vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x), all(vec4<bool>(true, false, true, false)))), 1u));
    let var_1 = ~(~16968u);
    var var_2 = vec2<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(-arg_0.xy, select(~vec2<i32>(arg_0.x, arg_0.x), ~vec2<i32>(37240i, arg_0.x), false) << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_1.x, arg_1.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, u_input.a))) % vec2<u32>(32u))));
    let var_3 = Struct_3(Struct_1(-(~(arg_0 << (vec3<u32>(var_1, 70842u, var_1) % vec3<u32>(32u)))), select(-23708i & var_2.x, firstTrailingBit(~2147483647i), !any(vec3<bool>(false, false, true))), vec3<bool>(true, true, global0.a < _wgslsmith_f_op_f32(-var_0.a)), -(-vec4<i32>(-2147483647i, var_2.x, -2147483647i, 1054i) << (vec4<u32>(arg_1.x, var_1, 0u, var_1) % vec4<u32>(32u))), (false || all(vec2<bool>(true, false))) | all(vec3<bool>(true, true, true))), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-296f, var_0.a))), -1523f), Struct_3(global3[_wgslsmith_index_u32(arg_1.x, 28u)], func_4(var_0.a, Struct_3(Struct_1(vec3<i32>(2147483647i, 0i, var_2.x), arg_0.x, vec3<bool>(false, true, true), vec4<i32>(-24314i, 0i, var_2.x, 0i), true), Struct_2(global0.a), u_input.a, 4294967295u)), 1u >> (countOneBits(31110u) % 32u), ~_wgslsmith_mod_u32(u_input.a, 0u))), countOneBits(abs(arg_1.x)), ~(_wgslsmith_sub_u32(1u, ~4294967295u) >> (0u % 32u)));
    global0 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) + _wgslsmith_f_op_f32(-var_3.b.a)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-522f - var_3.b.a)))))), var_3);
    return _wgslsmith_f_op_f32(round(-1472f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = false;
    global1 = _wgslsmith_add_u32(countOneBits(1u), u_input.a);
    var var_1 = 2147483647i;
    let var_2 = global3[_wgslsmith_index_u32(~u_input.a, 28u)];
    global0 = Struct_2(_wgslsmith_f_op_f32(global0.a * -1042f));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, global0.a))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-422f)), _wgslsmith_f_op_f32(-global0.a), var_2.e))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1416f + 1800f))), _wgslsmith_f_op_f32(func_1(-vec3<i32>(-var_2.a.x, var_2.d.x, -1i), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 31219u), ~(~vec2<u32>(u_input.a, 0u))))));
    var var_4 = Struct_4(var_2.b, -1i, Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_2.b, var_2.d.x, 16394i), ~var_2.a), var_2.b, var_2.c, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(var_2.d, var_2.d, vec4<i32>(-19391i, var_2.d.x, -51853i, -49768i)), var_2.d, vec4<i32>(-77574i, -35989i, 9693i, var_2.b) & var_2.d), all(select(vec4<bool>(true, var_2.c.x, var_2.e, var_2.e), vec4<bool>(var_2.c.x, var_2.e, true, var_2.e), true))), func_4(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(f32(-1f) * -555f)), Struct_3(global3[_wgslsmith_index_u32(u_input.a | u_input.a, 28u)], Struct_2(1000f), u_input.a, 1u)), 32852u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_2.b, var_2.b));
}

