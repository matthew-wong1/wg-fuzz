struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 15655u, 4294967295u), false, 12305u, Struct_1(704f), Struct_1(271f));

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f + _wgslsmith_f_op_f32(-global0.e.a))), global0.d.a, false)));
    global1 = array<Struct_2, 22>();
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.c, countOneBits(~(8833u ^ select(u_input.b.x, 0u, false))), global0.a.x), 22u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    global0 = Struct_2(~max(~_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(92031u, 0u, arg_3.a.x)), ~(global0.a | arg_3.a)), all(vec4<bool>(arg_3.b, arg_0.b, false, all(select(vec3<bool>(global0.b, false, true), vec3<bool>(true, false, true), vec3<bool>(arg_0.b, global0.b, true))))), u_input.b.x, func_2(global0.b).d, arg_0.d);
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2079f, 1062f, 1274f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 107f, -257f)))), vec3<bool>(global0.b, all(vec3<bool>(arg_3.b, false, arg_3.b)), !global0.b)))));
    global0 = arg_3;
    global0 = arg_3;
    global0 = global1[_wgslsmith_index_u32(~arg_0.a.x, 22u)];
    return !(!(!(!(!vec3<bool>(true, arg_3.b, false)))));
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.a.x < _wgslsmith_add_i32(0i, u_input.c.x);
    let var_1 = 1f;
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-656f, -399f)))) + global0.d.a));
    var var_4 = !vec4<bool>(u_input.c.x != select(u_input.c.x, 3796i, true), select((u_input.d | 0i) == firstTrailingBit(1i), !(!var_0), global0.b), all(func_3(global1[_wgslsmith_index_u32(~global0.a.x, 22u)], vec3<i32>(-1i, u_input.a.x, 11412i), _wgslsmith_f_op_f32(sign(-679f)), func_2(true))), false && all(!vec2<bool>(var_2.b, global0.b)));
    return !vec4<bool>(!(!(var_3.a <= global0.e.a)), true, true, var_2.b);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    return global1[_wgslsmith_index_u32(global0.a.x, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, true);
    var var_1 = u_input.b.x;
    var var_2 = Struct_2(global0.a, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 0u), vec2<u32>(4294967295u, 4294967295u)) & _wgslsmith_add_u32(20729u, 1u)) != ~u_input.b.x, 97198u, global0.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f))));
    var_2 = func_4(select(!select(!vec4<bool>(false, global0.b, global0.b, false), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(global0.b, false, global0.b, false), vec4<bool>(var_2.b, global0.b, global0.b, false)), global0.b && true), func_1(), global0.b || !global0.b));
    var var_3 = global0.e;
    let var_4 = _wgslsmith_mod_i32(u_input.d, -2147483647i);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1314f)), _wgslsmith_f_op_f32(f32(-1f) * -657f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, -344f) * vec2<f32>(var_2.d.a, 210f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1251f, var_3.a) - vec2<f32>(var_3.a, 1373f)))))));
    var_2 = Struct_2(_wgslsmith_sub_vec3_u32(var_2.a, abs(countOneBits(vec3<u32>(14269u, 79640u, 0u))) << (max(vec3<u32>(68709u, global0.c, 74213u), global0.a) % vec3<u32>(32u))), true, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(global0.c, global0.c, var_2.a.x, var_2.a.x)), vec4<u32>(_wgslsmith_mod_u32(var_2.a.x, global0.c), countOneBits(4294967295u | u_input.b.x), u_input.b.x, abs(global0.c) & ~4294967295u)), global0.d, Struct_1(-210f));
    let var_6 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(0u, 612f, ~u_input.b, _wgslsmith_f_op_f32(round(var_3.a)), u_input.d);
}

