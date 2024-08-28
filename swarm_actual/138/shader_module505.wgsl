struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1440f, 1097f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(773f, 205f) + vec2<f32>(705f, -1151f))) + vec2<f32>(-970f, _wgslsmith_div_f32(-914f, 455f))))));
    let var_1 = Struct_1(var_0.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
    let var_3 = vec3<bool>(true, true, !(!(_wgslsmith_div_f32(var_0.a.x, var_2.a.x) >= _wgslsmith_div_f32(-1582f, var_0.a.x))));
    var var_4 = Struct_1(var_2.a);
    return _wgslsmith_f_op_f32(150f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.a.x, _wgslsmith_f_op_f32(select(var_1.a.x, var_2.a.x, true)), all(var_3.zz)))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, ~(~u_input.a), ~32416u), select(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a) << (vec3<u32>(20800u, 0u, 0u) % vec3<u32>(32u)), vec3<u32>(u_input.b, u_input.a, 22913u))), _wgslsmith_div_vec3_u32(~vec3<u32>(84607u, u_input.c, u_input.a), ~vec3<u32>(36518u, u_input.c, 0u)) >> (vec3<u32>(34545u, countOneBits(1u), ~u_input.b) % vec3<u32>(32u)), !arg_3));
    global0 = array<Struct_1, 28>();
    let var_1 = -abs(reverseBits(vec2<i32>(-44281i, min(1i, -2147483647i))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, arg_0.a.x)) - _wgslsmith_f_op_vec2_f32(exp2(arg_2.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) * vec2<f32>(-140f, 1000f)))));
    global0 = array<Struct_1, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-613f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.x)))), arg_1)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1436f, arg_0) + vec2<f32>(840f, arg_1.a.x)), vec2<f32>(arg_0, 1009f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(118f, arg_1.a.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.a.x)), arg_1.a, vec2<bool>(true, true))))));
    let var_1 = ~_wgslsmith_add_vec4_u32(abs(~(~vec4<u32>(4294967295u, u_input.c, u_input.b, 1637u))), reverseBits((vec4<u32>(u_input.c, 19551u, 59797u, u_input.a) | vec4<u32>(14629u, 58842u, 1u, u_input.a)) | abs(vec4<u32>(6112u, u_input.c, u_input.b, 623u))));
    var var_2 = _wgslsmith_f_op_f32(func_2());
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(688f, var_0.a.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1611f, 1672f))))) * arg_1.a), arg_1.a));
    var var_4 = vec4<u32>(firstTrailingBit(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(50006u, var_1.x, 3696u, 1u)), 1u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(74541u, 0u), var_1.wy, countOneBits(vec2<u32>(var_1.x, var_1.x)))) << (13143u % 32u), u_input.c, _wgslsmith_add_u32(var_1.x, ~(~(~1u))));
    return Struct_1(vec2<f32>(var_3.a.x, 894f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = all(vec4<bool>(11683u == _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.b, 56977u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(u_input.a, u_input.c, u_input.b))), arg_2.x, true, all(!arg_2)));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-545f, -221f)), _wgslsmith_f_op_f32(step(arg_0.a.x, arg_1.a.x)))))) * _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-971f, 1149f))), -1000f, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a))), any(vec4<bool>(false, var_0, arg_2.x, arg_2.x))))), arg_1, vec2<i32>(-arg_3.x, min(select(abs(0i), arg_3.x >> (69711u % 32u), var_0), ~23331i)));
    global0 = array<Struct_1, 28>();
    var_1 = func_4(427f, Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + -271f)), global0[_wgslsmith_index_u32(99803u, 28u)], ~arg_3.xx).a), -(vec2<i32>(-1i) * -arg_3.yz));
    let var_2 = arg_1;
    return vec2<bool>(arg_2.x & true, true);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<i32>) -> bool {
    global0 = array<Struct_1, 28>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_1 = vec3<bool>(false, _wgslsmith_div_u32(~(~33510u), 4294967295u) != min(~(~39489u), ~u_input.b), false);
    var_0 = global0[_wgslsmith_index_u32(~6689u, 28u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - -1554f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1654f, 380f, 2060f, _wgslsmith_f_op_f32(-115f * -1099f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-115f, _wgslsmith_f_op_f32(ceil(1044f)), _wgslsmith_f_op_f32(select(872f, 598f, false)), 600f)))), vec4<f32>(-849f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-779f, _wgslsmith_div_f32(-376f, 777f))), _wgslsmith_f_op_f32(680f - 949f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1144f, -1374f))), func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, -1052f))), func_1(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], vec3<bool>(true, true, true), ~vec3<i32>(2147483647i, 1i, 1i) << (vec3<u32>(u_input.a, u_input.c, u_input.a) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(1i, 1i, 1i)))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, max(reverseBits(59574u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 17284u, u_input.c), vec3<u32>(64374u, u_input.c, 3933u)))), ~74398u));
    global0 = array<Struct_1, 28>();
    var var_2 = select(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))) || (true || (u_input.a >= var_1)), true, all(vec2<bool>(true, true)), true | !any(vec2<bool>(true, true))), select(vec4<bool>(any(vec2<bool>(true, true)), true, true, false), vec4<bool>(true, !all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), true), !(1u <= abs(u_input.a))), select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, true), true), vec4<bool>(all(vec2<bool>(true, false)), select(false, false, false), false, func_1(global0[_wgslsmith_index_u32(39940u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], vec3<bool>(true, true, false), vec3<i32>(2147483647i, -1i, 1i)).x), true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true))));
    var var_3 = global0[_wgslsmith_index_u32(min(~(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 66095u, var_1, 4294967295u), vec4<u32>(var_1, u_input.b, u_input.c, var_1), true), vec4<u32>(78419u, 1u, 36813u, u_input.b) ^ vec4<u32>(u_input.b, u_input.c, 0u, var_1)) | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, var_1, 0u)), vec3<u32>(32399u, var_1, u_input.b) ^ vec3<u32>(0u, 4294967295u, u_input.a))), var_1), 28u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1476f, -1109f, var_0.x, -1005f) - vec4<f32>(-1189f, var_3.a.x, var_3.a.x, -416f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec2<i32>(1i, 1i)), ~(~(-59252i)));
}

