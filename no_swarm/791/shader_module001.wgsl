struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-148f, 1000f, -1000f), vec3<f32>(1000f, 1117f, -171f), vec3<f32>(644f, 943f, -561f), vec3<f32>(430f, -1568f, -261f), vec3<f32>(-343f, 273f, 1604f), vec3<f32>(1042f, -202f, -895f), vec3<f32>(-1012f, -215f, 668f), vec3<f32>(-1031f, 794f, 742f), vec3<f32>(520f, 1616f, -220f), vec3<f32>(156f, 470f, 204f), vec3<f32>(1183f, 238f, 762f), vec3<f32>(162f, 1808f, 2011f), vec3<f32>(555f, -441f, 212f), vec3<f32>(665f, 581f, -661f), vec3<f32>(-1021f, 160f, -212f), vec3<f32>(1000f, 2197f, -1276f), vec3<f32>(-1109f, -635f, 582f));

var<private> global2: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    let var_0 = !arg_2.x;
    global1 = array<vec3<f32>, 17>();
    global1 = array<vec3<f32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f), -2076f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-432f))))))));
    global2 = array<vec2<bool>, 25>();
    return -20344i;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = 12021u;
    var var_1 = true;
    global1 = array<vec3<f32>, 17>();
    let var_2 = u_input.b.x;
    let var_3 = vec4<i32>(arg_0.a.a, _wgslsmith_sub_i32(-28710i, arg_0.a.a), 0i | (func_3(arg_0.a.b, arg_0, !vec2<bool>(arg_1, true)) << (var_2 % 32u)), _wgslsmith_sub_i32(0i, -u_input.c));
    return all(select(select(arg_0.a.b, select(!arg_0.a.b, arg_0.a.b, select(arg_0.a.b, vec3<bool>(true, arg_0.a.b.x, arg_0.a.b.x), arg_0.a.b.x)), arg_0.a.b), select(!(!arg_0.a.b), arg_0.a.b, vec3<bool>(!arg_0.a.b.x, true, true)), select(select(!vec3<bool>(arg_1, arg_0.a.b.x, arg_1), !arg_0.a.b, vec3<bool>(true, arg_1, true)), !(!arg_0.a.b), vec3<bool>(false, !arg_1, true))));
}

fn func_1() -> f32 {
    global1 = array<vec3<f32>, 17>();
    let var_0 = vec3<bool>(false, true, select(false, all(vec4<bool>(false, all(vec4<bool>(false, true, false, true)), func_2(Struct_2(Struct_1(u_input.c, vec3<bool>(true, true, false))), true), true)), any(vec2<bool>(true, true))));
    global1 = array<vec3<f32>, 17>();
    global1 = array<vec3<f32>, 17>();
    return -996f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -730f))) * _wgslsmith_f_op_f32(func_1()));
    global2 = array<vec2<bool>, 25>();
    let var_1 = Struct_1(-_wgslsmith_clamp_i32(reverseBits(-32679i), 18215i & -u_input.c, _wgslsmith_div_i32(u_input.c, ~0i)), vec3<bool>(!all(!global2[_wgslsmith_index_u32(102514u, 25u)]), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), all(vec4<bool>(true, false, true, true)))), !((var_0 < var_0) || false)));
    var var_2 = var_0;
    var var_3 = true;
    var var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.a, -1i, -64517i) & (vec4<i32>(u_input.c, 2147483647i, u_input.c, -1i) ^ vec4<i32>(u_input.c, var_1.a, -85540i, 27863i)), vec4<i32>(37276i, _wgslsmith_mod_i32(2147483647i, 10082i), ~var_1.a, reverseBits(12320i))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(1i, 0i, u_input.c), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x)), ~countOneBits(vec3<i32>(15525i, var_1.a, var_1.a))), -_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 20191i, -2147483647i, -59243i)), _wgslsmith_mod_vec4_i32(vec4<i32>(9953i, u_input.c, var_1.a, 1i), vec4<i32>(43259i, 22763i, 48304i, 89586i)))), vec3<i32>(0i, ~abs(_wgslsmith_clamp_i32(var_1.a, -35337i, -37042i)), min(select(0i, firstTrailingBit(u_input.c), var_1.b.x), -14879i)));
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(1793f, vec4<f32>(var_0, -185f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 1017f) + 744f))), _wgslsmith_dot_vec2_u32(min(min(u_input.a.yy, vec2<u32>(u_input.b.x, 0u)), select(u_input.b, vec2<u32>(u_input.a.x, 27463u), global2[_wgslsmith_index_u32(u_input.b.x, 25u)])), _wgslsmith_mod_vec2_u32(u_input.a.xz, _wgslsmith_add_vec2_u32(u_input.a.xz, u_input.b))) >> (~98052u % 32u), i32(-1i) * -2147483647i, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(abs(u_input.a.x), ~u_input.a.x), abs(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 0u))), min(~(~u_input.a.x), u_input.b.x), countOneBits(abs(firstTrailingBit(4093u)))));
}

