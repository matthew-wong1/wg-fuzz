struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27>;

var<private> global1: array<u32, 11> = array<u32, 11>(4294967295u, 99444u, 7220u, 36317u, 0u, 1u, 25306u, 0u, 1u, 4294967295u, 32568u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(327f)) + _wgslsmith_f_op_f32(-1000f - 663f))))));
    let var_1 = Struct_1(vec2<bool>(true, true), 369f, !vec3<bool>(all(vec2<bool>(true, true)), select(any(vec2<bool>(true, false)), false, false), true), -2147483647i, i32(-1i) * -13999i);
    var var_2 = Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, var_1.b)), _wgslsmith_f_op_f32(var_1.b + var_0.x))), vec3<bool>(!var_1.c.x, true, any(vec4<bool>(true, false, var_1.a.x, false))), -1i, u_input.b.x), Struct_1(vec2<bool>(true, !var_1.a.x), var_0.x, !vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), -2147483647i, u_input.b.x), var_1.c.zx), u_input.b.x, abs(u_input.c.yy));
    let var_3 = select(~vec4<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(6909u, 11u)], 1u), u_input.c, !(~var_2.c.x != (1u | global1[_wgslsmith_index_u32(var_2.c.x, 11u)])));
    let var_4 = Struct_4(var_2.a, countOneBits(_wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-15840i, 32778i, -877i)), vec3<i32>(_wgslsmith_mult_i32(var_2.b, var_2.b), _wgslsmith_clamp_i32(-1i, var_1.e, var_1.e), ~var_1.e))), max(vec2<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 22419u), ~(u_input.c.zx | ~u_input.c.zw)));
    return false;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: f32) -> bool {
    let var_0 = reverseBits(~(~(~(~vec4<i32>(10250i, 1i, -6750i, u_input.b.x)))));
    var var_1 = arg_0;
    var_1 = Struct_4(Struct_2(Struct_1(select(arg_1.zz, arg_1.yy, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2198f - arg_2) * -101f), select(!arg_1.wyz, vec3<bool>(true, true, true), false), 943i, var_0.x), Struct_1(arg_1.yx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2)))), vec3<bool>(false, false != arg_1.x, false), _wgslsmith_dot_vec4_i32(~var_0, vec4<i32>(var_0.x, var_0.x, arg_0.b, arg_0.a.a.e)), arg_0.a.a.d & var_0.x), vec2<bool>(func_3(), true | (arg_1.x || arg_1.x))), var_0.x, _wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_0.c.x, 1u)), u_input.c.zw));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(~firstLeadingBit(global1[_wgslsmith_index_u32(14621u, 11u)])), global1[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(17350u, 6962u, u_input.d, arg_0.c.x)), 11u)]), 11u)], 0u), _wgslsmith_dot_vec3_u32(abs(u_input.c.yxz) << (~abs(global0[_wgslsmith_index_u32(arg_0.c.x, 27u)]) % vec3<u32>(32u)), ~vec3<u32>(countOneBits(1u), global1[_wgslsmith_index_u32(0u, 11u)] << (var_1.c.x % 32u), arg_0.c.x))), 11u)];
    global0 = array<vec3<u32>, 27>();
    return arg_0.a.c.x;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1298f + 1153f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f * arg_0)))));
    var var_1 = true;
    global1 = array<u32, 11>();
    var var_2 = Struct_3(vec4<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 33558u, u_input.d) & _wgslsmith_mod_u32(62623u, global1[_wgslsmith_index_u32(1u, 11u)]), ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.a), 11u)]), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 35953u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), countOneBits(u_input.c)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(u_input.e, 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 11u)], 11u)], 27u)]), abs(vec3<u32>(11041u, 39837u, u_input.a))) >> (u_input.c.x % 32u)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), func_2(Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), 1000f, vec3<bool>(false, true, true), u_input.b.x, -1i), Struct_1(vec2<bool>(true, true), 556f, vec3<bool>(true, true, false), u_input.b.x, u_input.b.x), vec2<bool>(true, true)), u_input.b.x, u_input.c.yx), vec4<bool>(true, false, true, true), var_0)), !all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), true)), all(!vec3<bool>(true, false, all(vec2<bool>(false, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -801f), -197f, -395f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, -593f, var_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2171f, -455f, arg_0), vec3<f32>(arg_0, 153f, arg_0))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-962f, -505f, arg_0) * vec3<f32>(261f, var_0, var_0)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, var_0, var_0), vec3<f32>(-1123f, -363f, var_0)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1993f, var_0, _wgslsmith_div_f32(-370f, var_0))))), vec3<bool>(true, !var_2.d, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-785f, -558f)), _wgslsmith_f_op_f32(-402f * var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 11>();
    var var_0 = _wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], abs(u_input.d)), 11u)], ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(38971u, 35302u), 11u)])), global1[_wgslsmith_index_u32(36215u, 11u)]);
    let var_1 = ~(~_wgslsmith_sub_u32((u_input.c.x << (16870u % 32u)) ^ u_input.e, ~0u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(2605f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2207f - 1030f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-935f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -478f))));
    global0 = array<vec3<u32>, 27>();
    let var_3 = Struct_3(u_input.c, vec3<bool>(!(true || any(vec3<bool>(false, true, true))), true, any(vec2<bool>(true, any(vec2<bool>(true, false))))), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), true)), true);
    global0 = array<vec3<u32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~vec4<u32>(abs(var_3.a.x), ~global1[_wgslsmith_index_u32(4294967295u, 11u)], 98214u, ~20233u), ~u_input.c), min(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 11u)], 27u)], firstTrailingBit(~var_3.a.wxw)), u_input.b.x);
}

