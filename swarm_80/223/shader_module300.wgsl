struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: f32;

var<private> global2: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(109f, 1761f), vec2<f32>(820f, 225f), vec2<f32>(168f, -196f), vec2<f32>(623f, 1620f), vec2<f32>(2023f, 494f), vec2<f32>(706f, -1651f), vec2<f32>(-1141f, -344f), vec2<f32>(-731f, 1000f), vec2<f32>(1141f, -376f), vec2<f32>(1000f, 292f), vec2<f32>(412f, -581f), vec2<f32>(1689f, 1000f), vec2<f32>(-662f, 1225f), vec2<f32>(-1000f, -515f), vec2<f32>(-1154f, 268f), vec2<f32>(-1138f, 390f), vec2<f32>(1092f, 1888f), vec2<f32>(683f, -606f), vec2<f32>(220f, -213f), vec2<f32>(160f, -160f), vec2<f32>(689f, 1548f), vec2<f32>(-614f, 1000f), vec2<f32>(-1498f, 1000f));

var<private> global3: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1u, 1u, 54088u, 1u));

var<private> global4: Struct_4 = Struct_4(4294967295u, 4294967295u, Struct_2(vec3<f32>(-2130f, -309f, 617f), Struct_1(vec3<i32>(1i, -1i, 14383i), vec2<bool>(false, true), vec2<bool>(true, true))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> u32 {
    var var_0 = arg_1;
    let var_1 = Struct_3(Struct_2(global4.c.a, var_0.b), var_0.b, ~(~_wgslsmith_mod_u32(~4294967295u, ~arg_1.c)), arg_1.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.e.x, arg_1.e.x))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-971f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.c.a.x, arg_1.e.x)) - 1960f), _wgslsmith_f_op_f32(-291f * _wgslsmith_f_op_f32(-arg_1.a.a.x)))));
    var var_2 = Struct_4(u_input.d | _wgslsmith_mod_u32(_wgslsmith_sub_u32(62067u, var_0.c), 0u), arg_1.c, arg_1.d);
    global4 = Struct_4(select(1u, var_2.a, false), ~(~1u), global4.c);
    return var_1.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>) -> vec3<f32> {
    global0 = array<vec2<bool>, 16>();
    global2 = array<vec2<f32>, 23>();
    var var_0 = arg_2.x;
    let var_1 = any(select(select(!(!vec3<bool>(arg_0.x, global4.c.b.c.x, arg_1)), !(!vec3<bool>(arg_1, global4.c.b.c.x, arg_1)), !arg_0.x), vec3<bool>(!(arg_0.x | true), (38922u <= u_input.d) & global4.c.b.c.x, global4.c.b.b.x), global4.c.b.c.x));
    var var_2 = Struct_4(1u, _wgslsmith_sub_u32(~3685u, ~(~global4.b >> (~global4.a % 32u))), global4.c);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.c.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.c.a.x)), _wgslsmith_div_f32(global4.c.a.x, global4.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.c.a.x, global4.c.a.x) - _wgslsmith_f_op_f32(171f + -1377f)))));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.e, ~u_input.c.zxy), _wgslsmith_add_vec3_u32(~u_input.e, arg_0.wxx)), reverseBits(global4.b)), _wgslsmith_sub_u32(1u, countOneBits(~firstTrailingBit(0u))), global4.c);
    let var_1 = _wgslsmith_f_op_f32(round(734f));
    var var_2 = ~_wgslsmith_div_i32(38171i | _wgslsmith_mod_i32(u_input.b, 19324i), 10541i);
    var var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(var_0.c.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-272f, -1000f)) * global4.c.a.x)), -1608f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(any(vec4<bool>(var_0.c.b.b.x, var_0.c.b.c.x, false, var_0.c.b.c.x)), global4.c.b.b.x), func_3(global4.c.b.c.x, Struct_3(var_0.c, global4.c.b, global4.a, Struct_2(global4.c.a, Struct_1(var_0.c.b.a, var_0.c.b.b, vec2<bool>(global4.c.b.c.x, false))), global2[_wgslsmith_index_u32(arg_0.x, 23u)])) >= ~18093u, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global4.c.b.a.x, 3712i, 1i), vec4<i32>(global4.c.b.a.x, 1i, 1i, -77481i)))))));
    return _wgslsmith_add_i32(1i, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.c.b.a.yz, global4.c.b.a.yx), var_0.c.b.a.x) | global4.c.b.a.x));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~vec4<u32>(u_input.e.x, firstLeadingBit(1u), firstTrailingBit(u_input.c.x), _wgslsmith_add_u32(u_input.d, _wgslsmith_sub_u32(1u, ~global4.b)));
    let var_1 = firstLeadingBit(1i) ^ u_input.b;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.c.a));
    var var_4 = global4.c.a.x;
    return StorageBuffer(~(~(~u_input.d)), vec4<i32>(func_2(~global3[_wgslsmith_index_u32(1u, 1u)] << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 1u, u_input.e.x), vec4<u32>(u_input.c.x, 71404u, u_input.e.x, var_0.x)) % vec4<u32>(32u))), u_input.a >> (10109u % 32u), var_1, 1312i), firstTrailingBit(var_0.xw), global4.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b;
    var var_1 = global4.c.a.x;
    global1 = global4.c.a.x;
    let x = u_input.a;
    s_output = func_1();
}

