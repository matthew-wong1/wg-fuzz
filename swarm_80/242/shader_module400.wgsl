struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false));

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(3052u, vec3<bool>(true, true, true), Struct_1(vec3<f32>(-954f, -718f, -572f)), 4294967295u), Struct_2(22963u, vec3<bool>(true, false, true), Struct_1(vec3<f32>(-2088f, -996f, 910f)), 4294967295u), Struct_2(78653u, vec3<bool>(true, false, true), Struct_1(vec3<f32>(735f, -271f, -369f)), 68554u), Struct_2(1u, vec3<bool>(false, false, true), Struct_1(vec3<f32>(248f, -1884f, 320f)), 19709u), Struct_2(29148u, vec3<bool>(true, true, false), Struct_1(vec3<f32>(481f, -678f, -177f)), 1u), Struct_2(6885u, vec3<bool>(false, true, false), Struct_1(vec3<f32>(-304f, 1000f, 769f)), 1u), Struct_2(0u, vec3<bool>(false, true, true), Struct_1(vec3<f32>(-555f, -1439f, 964f)), 4294967295u), Struct_2(29768u, vec3<bool>(true, true, true), Struct_1(vec3<f32>(248f, 229f, 441f)), 0u), Struct_2(4294967295u, vec3<bool>(false, true, true), Struct_1(vec3<f32>(1000f, 105f, 136f)), 0u), Struct_2(1u, vec3<bool>(false, true, false), Struct_1(vec3<f32>(1044f, 869f, -782f)), 1u), Struct_2(48011u, vec3<bool>(true, true, true), Struct_1(vec3<f32>(1000f, -983f, -1051f)), 2982u), Struct_2(58357u, vec3<bool>(true, false, false), Struct_1(vec3<f32>(379f, 357f, 769f)), 51006u), Struct_2(26697u, vec3<bool>(true, false, true), Struct_1(vec3<f32>(176f, 721f, 1089f)), 91309u), Struct_2(4294967295u, vec3<bool>(false, true, true), Struct_1(vec3<f32>(1991f, -183f, -1000f)), 26197u), Struct_2(1u, vec3<bool>(true, true, false), Struct_1(vec3<f32>(-2015f, 901f, -577f)), 1u), Struct_2(34818u, vec3<bool>(true, false, true), Struct_1(vec3<f32>(-510f, -483f, 1000f)), 1u), Struct_2(1u, vec3<bool>(false, false, false), Struct_1(vec3<f32>(1007f, 708f, 186f)), 4294967295u), Struct_2(0u, vec3<bool>(false, false, false), Struct_1(vec3<f32>(-884f, 1523f, 1589f)), 4294967295u), Struct_2(0u, vec3<bool>(true, false, true), Struct_1(vec3<f32>(-1510f, -211f, 2015f)), 10259u), Struct_2(0u, vec3<bool>(false, true, false), Struct_1(vec3<f32>(-545f, 667f, -1000f)), 36326u), Struct_2(10846u, vec3<bool>(false, true, true), Struct_1(vec3<f32>(153f, -395f, -1824f)), 55779u), Struct_2(0u, vec3<bool>(true, false, false), Struct_1(vec3<f32>(-739f, 846f, -1065f)), 1u), Struct_2(4294967295u, vec3<bool>(false, true, false), Struct_1(vec3<f32>(-174f, -197f, -407f)), 21265u), Struct_2(4294967295u, vec3<bool>(false, false, true), Struct_1(vec3<f32>(-664f, 998f, -1521f)), 1u));

var<private> global3: bool;

var<private> global4: array<bool, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1.x, _wgslsmith_div_f32(arg_2.a.x, -484f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.yxz, vec3<f32>(arg_2.a.x, 601f, arg_2.a.x)))), !(!select(vec3<bool>(global4[_wgslsmith_index_u32(18014u, 6u)], true, true), vec3<bool>(true, global4[_wgslsmith_index_u32(16734u, 6u)], global4[_wgslsmith_index_u32(81271u, 6u)]), vec3<bool>(true, true, global4[_wgslsmith_index_u32(34388u, 6u)]))))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 24u)];
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, -1719f))));
    global3 = true;
    let var_2 = all(var_1.b);
    return min(1u, var_1.d);
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<bool>, 4>();
    var var_0 = Struct_3(global2[_wgslsmith_index_u32(~(~(~35571u ^ u_input.a.x)), 24u)], Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(-1591f, 1000f, true)), global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-538f + global1.x))))), global2[_wgslsmith_index_u32(~u_input.a.x, 24u)], func_3(-577f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-555f, global1.x, global1.x, -659f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-827f, global1.x, -1076f, 568f), vec4<f32>(global1.x, global1.x, global1.x, global1.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2157f, 1005f, -710f))))));
    global2 = array<Struct_2, 24>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a.c.a, vec3<f32>(global1.x, global1.x, 1667f), true)) - _wgslsmith_f_op_vec3_f32(-var_0.c.c.a)) - var_0.c.c.a)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1224f, 992f)), _wgslsmith_f_op_f32(-global1.x), var_0.a.x))));
    let var_1 = vec3<bool>(all(!(!(!vec4<bool>(true, false, global4[_wgslsmith_index_u32(u_input.a.x, 6u)], false)))), _wgslsmith_f_op_f32(-func_2().a.x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), -140f), all(global0[_wgslsmith_index_u32(~u_input.a.x, 4u)]));
    global1 = func_2().a;
    var var_2 = !(!var_1.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(104949u, 84562u ^ u_input.a.x, 1u, u_input.a.x), max(_wgslsmith_div_vec4_u32(vec4<u32>(42804u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 0u, 5760u, u_input.a.x)), min(vec4<u32>(u_input.a.x, u_input.a.x, 18540u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), vec4<u32>(u_input.a.x, 19298u, 18714u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u) | vec4<u32>(u_input.a.x, 0u, 0u, 0u)))) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, ~u_input.a.x), select(firstLeadingBit(vec2<u32>(u_input.a.x, 11082u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 1u), u_input.a), !all(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 6u)]))));
    var_1 = reverseBits(min(_wgslsmith_add_u32(_wgslsmith_sub_u32(54723u, 0u) << (countOneBits(21909u) % 32u), u_input.a.x), 82840u));
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.a), var_0.a))));
    var_1 = 26532u;
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1i, global1.xy, _wgslsmith_sub_vec2_u32(vec2<u32>(6053u, u_input.a.x), vec2<u32>(u_input.a.x, ~(~u_input.a.x))), 1030f, vec2<i32>(-1i) * -(vec2<i32>(-1i, u_input.b) ^ ~vec2<i32>(u_input.b, 0i)));
}

