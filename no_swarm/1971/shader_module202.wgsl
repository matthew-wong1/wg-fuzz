struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(1u, false), true, false), Struct_2(Struct_1(1u, false), true, true), Struct_2(Struct_1(1u, true), false, true), Struct_2(Struct_1(1u, true), false, false), Struct_2(Struct_1(0u, true), true, false), Struct_2(Struct_1(4294967295u, true), true, false), Struct_2(Struct_1(1u, true), true, true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    let var_0 = vec2<u32>(u_input.d.x, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(u_input.b, u_input.b), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(70095u, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<u32>(47785u, 0u, 13514u, 0u), _wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.d.x, u_input.b.x, u_input.b.x)))));
    return ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(12508u, ~1u), u_input.c.x);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, global0[_wgslsmith_index_u32(arg_2.a.a, 7u)], global0[_wgslsmith_index_u32(8654u, 7u)], arg_1) + vec4<f32>(128f, -1201f, global0[_wgslsmith_index_u32(arg_3, 7u)], arg_1)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -704f, global0[_wgslsmith_index_u32(arg_3, 7u)], arg_1), vec4<f32>(-348f, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(arg_2.a.a, 7u)], 156f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_3, 7u)], arg_1, global0[_wgslsmith_index_u32(arg_3, 7u)], arg_1) - vec4<f32>(arg_1, arg_1, 1000f, arg_1)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(2529f, 657f, global0[_wgslsmith_index_u32(4294967295u, 7u)], -1183f))))))));
    let var_1 = 9239u;
    global1 = array<Struct_2, 7>();
    global0 = array<f32, 7>();
    var var_2 = u_input.a;
    return func_2(select(select(vec4<bool>(arg_2.c, arg_2.b, arg_2.a.b, false), select(vec4<bool>(true, arg_2.b, false, true), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_2.c), vec4<bool>(arg_2.a.b, true, true, true)), true), vec4<bool>(arg_2.a.b, all(vec3<bool>(arg_2.b, true, arg_2.a.b)), all(vec3<bool>(true, arg_0.a.x, arg_0.a.x)), all(vec3<bool>(false, true, false))), arg_0.a.x), Struct_3(vec2<bool>(arg_2.c || arg_0.a.x, 2147483647i < u_input.a.x)), 460f, ~(~vec4<i32>(-2147483647i, u_input.a.x, -1i, -1i) >> (vec4<u32>(0u, u_input.c.x, 4294967295u, 55797u) % vec4<u32>(32u)))) > 4294967295u;
}

fn func_1(arg_0: bool) -> i32 {
    global1 = array<Struct_2, 7>();
    let var_0 = !select(select(!(!vec2<bool>(arg_0, arg_0)), !select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), arg_0), vec2<bool>(241f >= global0[_wgslsmith_index_u32(46955u, 7u)], arg_0 != false)), select(vec2<bool>(true, u_input.a.x >= u_input.a.x), vec2<bool>(true, arg_0), func_3(Struct_3(vec2<bool>(arg_0, true)), global0[_wgslsmith_index_u32(~1u, 7u)], Struct_2(Struct_1(u_input.d.x, arg_0), true, arg_0), func_2(vec4<bool>(arg_0, arg_0, arg_0, true), Struct_3(vec2<bool>(arg_0, false)), global0[_wgslsmith_index_u32(u_input.c.x, 7u)], vec4<i32>(u_input.a.x, -12963i, -11007i, u_input.a.x)))), all(vec3<bool>(arg_0, false, false)) | select(any(vec2<bool>(false, true)), true, !arg_0));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(select(_wgslsmith_mult_vec3_u32(u_input.c.wzz, vec3<u32>(u_input.d.x, u_input.c.x, u_input.c.x)), firstTrailingBit(vec3<u32>(1u, 1u, 25581u)), true)), ~vec3<u32>(~u_input.b.x, u_input.b.x, 1u)), false);
    let var_2 = global0[_wgslsmith_index_u32(~17365u, 7u)];
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(18937u, 1u), 7u)];
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    var var_0 = !(~(~(~u_input.c.x)) >= 22346u);
    global1 = array<Struct_2, 7>();
    let var_1 = vec3<i32>(func_1(true), u_input.a.x, countOneBits(u_input.a.x));
    var var_2 = Struct_2(Struct_1(max(~1148u, u_input.c.x), any(vec3<bool>(true, func_3(Struct_3(vec2<bool>(false, true)), -2067f, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], u_input.c.x), all(vec4<bool>(false, false, false, true))))), var_1.x >= (select(-87076i ^ u_input.a.x, 1i, true) | ~var_1.x), true != all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), true)));
    let var_3 = ~_wgslsmith_mod_vec3_i32(select(_wgslsmith_mult_vec3_i32(var_1, vec3<i32>(u_input.a.x, var_1.x, u_input.a.x)), vec3<i32>(-u_input.a.x, func_1(var_2.c), -21498i), var_2.c), var_1);
    var_0 = false != (~u_input.c.x >= ~1u);
    var_0 = false;
    var var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(2166u, 1u, func_2(vec4<bool>(var_2.c, var_2.a.b, var_2.c, var_2.a.b), Struct_3(vec2<bool>(true, false)), -1793f, vec4<i32>(1i, 2147483647i, 2147483647i, u_input.a.x))) >> (vec3<u32>(var_2.a.a, ~var_2.a.a, 45887u) % vec3<u32>(32u)), max(vec3<u32>(var_2.a.a, _wgslsmith_mult_u32(57080u, var_2.a.a), ~var_2.a.a), countOneBits(u_input.c.wwz))) | vec3<u32>(58642u >> (~select(u_input.c.x, 4294967295u, var_2.c) % 32u), 4294967295u, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(0u, u_input.d.x, 0u) & ~countOneBits(4294967295u), 7u)] + -588f));
}

