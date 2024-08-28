struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(0u, 46213u), vec2<u32>(9258u, 1u), vec2<u32>(41293u, 65681u), vec2<u32>(1u, 15160u), vec2<u32>(58607u, 42811u), vec2<u32>(20341u, 4294967295u), vec2<u32>(57554u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(18794u, 10138u), vec2<u32>(38124u, 1u), vec2<u32>(0u, 0u));

var<private> global2: array<i32, 19> = array<i32, 19>(44167i, -26856i, 23105i, 2147483647i, -8404i, i32(-2147483648), 2147483647i, -111448i, -8i, 34435i, -1i, 2147483647i, i32(-2147483648), -17296i, 21162i, 1i, 2147483647i, -24028i, -20553i);

var<private> global3: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false));

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(false, false, Struct_1(true)), Struct_2(true, false, Struct_1(false)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(abs(777f));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1000f, -553f, 537f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1955f), 744f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -270f)), _wgslsmith_f_op_f32(-1551f - _wgslsmith_f_op_f32(abs(170f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(602f, 188f, -1059f, -1000f)) * vec4<f32>(786f, -956f, -849f, 761f))))));
    return _wgslsmith_f_op_f32(step(-1000f, var_2.x));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    var var_0 = arg_0.b & abs(arg_0.b);
    let var_1 = arg_2.c.a && arg_0.a.x;
    global3 = array<vec4<bool>, 29>();
    let var_2 = !vec4<bool>(!var_1, !global0[_wgslsmith_index_u32(~u_input.c.x, 28u)], !any(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 12565u, 1u), vec3<u32>(arg_1.c.x, arg_1.c.x, u_input.c.x)), 29u)]), true);
    var_0 = abs(_wgslsmith_clamp_u32(abs(arg_1.b) << (u_input.c.x % 32u), arg_0.c.x, abs(~4294967295u)) | (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 1u), vec3<u32>(u_input.c.x, arg_1.c.x, 39985u) << (arg_0.c % vec3<u32>(32u))) << (countOneBits(~arg_0.b) % 32u)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false);
    var var_1 = vec4<f32>(-149f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-178f - -982f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(372f)) * _wgslsmith_f_op_f32(func_1(u_input.a.x, var_0)))))), -683f, _wgslsmith_f_op_f32(f32(-1f) * -2197f));
    var var_2 = !select(true | any(select(vec3<bool>(var_0.a, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), true)), all(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], false)), var_0.a);
    let var_3 = -global2[_wgslsmith_index_u32(29065u, 19u)];
    var var_4 = var_0;
    global1 = array<vec2<u32>, 11>();
    global2 = array<i32, 19>();
    let var_5 = Struct_5(Struct_1(var_1.x > -559f), Struct_4(func_3(Struct_3(vec2<bool>(var_0.a, true), u_input.c.x, vec3<u32>(33768u, u_input.c.x, 4294967295u)), Struct_3(vec2<bool>(false, false), u_input.c.x, u_input.c.wzy), global4[_wgslsmith_index_u32(u_input.c.x, 2u)]) & u_input.c.xwz, Struct_3(!(!vec2<bool>(var_4.a, true)), abs(_wgslsmith_add_u32(407u, 6036u)), vec3<u32>(~u_input.c.x, 1u << (u_input.c.x % 32u), 57158u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(77091u, 38205u), _wgslsmith_mult_vec2_u32(u_input.c.yx, global1[_wgslsmith_index_u32(0u, 11u)]))), countOneBits(25555u) | u_input.c.x), ~select(vec3<i32>(reverseBits(25838i), 2147483647i, u_input.a.x), u_input.a, vec3<bool>(true, select(true, true, false), false && global0[_wgslsmith_index_u32(1u, 28u)])), !select(vec3<bool>(all(vec3<bool>(var_0.a, false, var_0.a)), all(global3[_wgslsmith_index_u32(0u, 29u)]), false), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true), vec3<bool>(false, var_0.a, var_4.a), false), !(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 28u)]))), u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<i32>(-1i) * -vec3<i32>(var_5.e.x, _wgslsmith_dot_vec3_i32(var_5.c, vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 19u)], var_3)), firstTrailingBit(0i)), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(-u_input.a.yx), var_5.e), abs(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, -23142i, var_3, var_5.c.x), ~vec4<i32>(var_3, var_3, -1i, u_input.a.x)) | vec4<i32>(firstTrailingBit(0i), i32(-1i) * -2147483647i, 0i, var_5.c.x)));
}

