struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(19381u, 1u), vec2<u32>(62616u, 41913u), vec2<u32>(10172u, 82099u), vec2<u32>(6590u, 13142u), vec2<u32>(11247u, 27160u), vec2<u32>(4294967295u, 108341u), vec2<u32>(50942u, 4294967295u), vec2<u32>(0u, 28796u), vec2<u32>(52707u, 7361u), vec2<u32>(16001u, 4294967295u), vec2<u32>(34740u, 22123u));

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_5(Struct_1(vec2<u32>(24269u, 59742u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.c.c, arg_0.a.c)))), false, arg_0.b));
    global2 = any(!(!global1[_wgslsmith_index_u32(0u, 22u)]));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1016f * var_0.a.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x))))));
    var var_2 = var_0;
    let var_3 = vec4<u32>(4592u, _wgslsmith_mod_u32(12133u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.e.x), vec4<u32>(var_2.a.a.x, 15834u, 38025u, var_0.a.a.x)), ~1u, var_2.a.c) << (0u % 32u)), 0u, ~abs(firstTrailingBit(0u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1383f, 346f)) * _wgslsmith_f_op_f32(trunc(arg_0.a.a.x)))), -1720f)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global1 = array<vec2<bool>, 22>();
    let var_0 = !vec4<bool>(any(vec2<bool>(true, any(vec3<bool>(true, false, false)))), (~u_input.c >= _wgslsmith_sub_i32(u_input.c, 0i)) & !(-38976i != u_input.c), true, true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, -1000f, -227f, -575f)), select(vec2<u32>(u_input.e.x, u_input.b.x), global0[_wgslsmith_index_u32(20859u, 11u)], global1[_wgslsmith_index_u32(24078u, 22u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1033f, 703f) * vec2<f32>(185f, -1000f))), u_input.c, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1377f, 289f, -1000f, 197f)), countOneBits(vec2<u32>(4294967295u, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(968f, 574f) * vec2<f32>(-1053f, -1418f)))))));
    global0 = array<vec2<u32>, 11>();
    global1 = array<vec2<bool>, 22>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_div_f32(var_1.a, 1000f))), var_1.a, -913f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2754f, var_1.a, var_1.a, var_1.a) + vec4<f32>(284f, var_1.a, var_1.a, 1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-425f, var_1.a, var_1.a, 1000f), vec4<f32>(103f, var_1.a, 226f, var_1.a))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<f32>(-579f, -1070f, 986f, var_1.a)))))), global0[_wgslsmith_index_u32(25947u, 11u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), var_1.a));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = reverseBits(~(0u >> (~(~u_input.d) % 32u)));
    var var_2 = Struct_4(func_2(~arg_0.b.x), ~(1i | u_input.c), arg_0);
    global1 = array<vec2<bool>, 22>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) - var_2.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -194f), var_0.x)) * -884f), -122f);
    return Struct_1(vec2<u32>(~_wgslsmith_sub_u32(30533u, var_2.c.b.x), 76181u), vec2<f32>(-403f, var_3), all(select(var_0.xy, !arg_2.zz, arg_2.yx)), -11884i);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_5(func_1(func_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, arg_2.a.x), arg_3.a.b)), _wgslsmith_f_op_f32(-2218f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.a.x)))), !(!vec3<bool>(arg_2.c, false, arg_2.c))));
    var var_1 = select(47143u, arg_0.a.b.x, true);
    let var_2 = func_1(arg_0.c, -1000f, select(vec3<bool>(true, var_0.a.c, !(var_0.a.c | var_0.a.c)), !(!(!vec3<bool>(var_0.a.c, arg_2.c, true))), func_1(func_2(firstTrailingBit(arg_2.a.x)), _wgslsmith_f_op_f32(-arg_2.b.x), !(!vec3<bool>(arg_2.c, false, var_0.a.c))).c));
    global1 = array<vec2<bool>, 22>();
    let var_3 = _wgslsmith_f_op_f32(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_3.c.a, arg_3.a.a, arg_2.c))), reverseBits(vec2<u32>(var_2.a.x, arg_2.a.x)) | _wgslsmith_div_vec2_u32(vec2<u32>(8199u, 4294967295u), var_0.a.a), _wgslsmith_f_op_vec2_f32(max(var_0.a.b, _wgslsmith_f_op_vec2_f32(arg_0.c.c + vec2<f32>(var_0.a.b.x, arg_0.c.c.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, arg_2.b.x)), -281f)), vec3<bool>(var_2.c, !(var_2.c || var_0.a.c), any(select(vec4<bool>(true, var_0.a.c, false, var_0.a.c), vec4<bool>(true, var_0.a.c, true, var_0.a.c), vec4<bool>(true, var_0.a.c, true, var_0.a.c))))).b.x + arg_3.a.a.x);
    return ~func_2(_wgslsmith_add_u32(78093u, arg_3.a.b.x)).b.x << (arg_0.a.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(748f + -894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1466f + -734f))))));
    let var_1 = select(global1[_wgslsmith_index_u32(abs(~_wgslsmith_add_u32(u_input.a >> (4294967295u % 32u), min(u_input.d, 10480u))), 22u)], vec2<bool>(any(vec3<bool>(var_0.a != 1629f, false, select(false, true, true))), !(!any(vec4<bool>(false, false, false, true)))), global1[_wgslsmith_index_u32(0u, 22u)]);
    global0 = array<vec2<u32>, 11>();
    let var_2 = vec2<i32>(-1i, reverseBits(u_input.c));
    var var_3 = ~(~abs(func_4(Struct_4(Struct_2(vec4<f32>(var_0.a, -1571f, var_0.a, 177f), vec2<u32>(107819u, u_input.b.x), vec2<f32>(var_0.a, -229f)), u_input.c, Struct_2(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a), global0[_wgslsmith_index_u32(u_input.b.x, 11u)], vec2<f32>(var_0.a, 566f))), var_0.a, func_1(Struct_2(vec4<f32>(273f, -778f, var_0.a, var_0.a), u_input.e, vec2<f32>(2918f, -621f)), var_0.a, vec3<bool>(true, true, true)), Struct_4(Struct_2(vec4<f32>(-537f, 1342f, var_0.a, -174f), vec2<u32>(31428u, 0u), vec2<f32>(var_0.a, 647f)), var_2.x, Struct_2(vec4<f32>(351f, -1000f, 1502f, 1183f), global0[_wgslsmith_index_u32(u_input.b.x, 11u)], vec2<f32>(209f, var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2033f)), _wgslsmith_f_op_f32(-var_0.a)), ~(~select(~26881u, func_2(13771u).b.x, var_1.x)), var_2.x, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(vec4<f32>(var_0.a, 2233f, var_0.a, var_0.a), global0[_wgslsmith_index_u32(1u, 11u)], vec2<f32>(590f, var_0.a)), 14791i, Struct_2(vec4<f32>(var_0.a, var_0.a, 1967f, -697f), vec2<u32>(u_input.e.x, 11371u), vec2<f32>(var_0.a, var_0.a))))), 3081f)), var_0.a));
}

