struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: array<i32, 9> = array<i32, 9>(2147483647i, 5807i, 50973i, 19895i, -9456i, -1i, 16706i, 35194i, -10369i);

var<private> global2: vec3<u32> = vec3<u32>(18777u, 34222u, 131583u);

var<private> global3: array<vec3<u32>, 29>;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-262f, arg_2.x, arg_2.x, arg_2.x)));
    let var_1 = Struct_1(~global3[_wgslsmith_index_u32(~max(0u, 4294967295u), 29u)], _wgslsmith_mult_i32(-countOneBits(-global1[_wgslsmith_index_u32(global2.x, 9u)]), 33199i));
    return _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - -1000f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)), var_0.x)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    global0 = array<vec3<f32>, 4>();
    let var_0 = Struct_1(firstLeadingBit(~reverseBits(reverseBits(vec3<u32>(29051u, 62854u, global2.x)))), 1i & -(~(~u_input.a)));
    var var_1 = var_0;
    var var_2 = global2.x;
    var var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, global2.x, 1u, var_0.a.x), abs(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 0u, global2.x, 49846u), vec4<u32>(var_0.a.x, 17911u, 4294967295u, 66545u)))));
    return -432f;
}

fn func_1() -> f32 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(24660u, 31453u, global2.x, 1u) | vec4<u32>(4294967295u, global2.x, global2.x, 43577u))), abs(~vec4<u32>(global2.x, 4294967295u, 0u, global2.x) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.x, global2.x, global2.x), vec4<u32>(0u, global2.x, 4294967295u, global2.x))));
    var var_1 = select(!vec4<bool>(_wgslsmith_f_op_f32(func_2(false, global4.x, vec3<f32>(-1000f, 1527f, 2005f))) <= _wgslsmith_f_op_f32(func_2(global4.x, false, global0[_wgslsmith_index_u32(var_0, 4u)])), !global4.x, all(vec2<bool>(global4.x, true)), global4.x), vec4<bool>(-_wgslsmith_dot_vec2_i32(vec2<i32>(38660i, -44516i), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(39075u, 9u)])) > 33054i, global4.x, _wgslsmith_f_op_f32(func_3(Struct_3(-808f, -1366f, 929f, 710f), true, global4.x, u_input.c.zy | u_input.c.xy)) >= 733f, true), !all(select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, true), vec2<bool>(global4.x, global4.x))));
    var_1 = vec4<bool>(var_1.x, all(vec3<bool>(true, true, true)), true, false && !(!var_1.x || true));
    global2 = ~(~global3[_wgslsmith_index_u32(~56244u, 29u)]);
    let var_2 = 1183f;
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = u_input.c.x | (reverseBits(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global2.x, 9u)], -1i) ^ arg_2) >> ((abs(arg_1) & ~countOneBits(global2.x)) % 32u));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(64170u), firstTrailingBit(~global2.x | (~arg_1 ^ global2.x))), 29u)];
    let var_1 = !(~_wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(arg_1, 29u)] | global3[_wgslsmith_index_u32(global2.x, 29u)], global3[_wgslsmith_index_u32(arg_1 << (46315u % 32u), 29u)]) >= ~(~global2.x | 0u));
    global4 = select(select(vec2<bool>(true, !all(vec2<bool>(var_1, true))), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, global4.x, global4.x)), true)), select(vec2<bool>(!all(vec3<bool>(global4.x, true, global4.x)), var_1), select(select(vec2<bool>(global4.x, false), select(vec2<bool>(true, global4.x), vec2<bool>(var_1, global4.x), false), var_1), vec2<bool>(all(vec2<bool>(true, false)), arg_1 == 4294967295u), all(vec3<bool>(false, false, var_1))), !(!(!vec2<bool>(false, var_1)))), !select(select(!vec2<bool>(global4.x, var_1), vec2<bool>(global4.x, false), global4.x), vec2<bool>(global4.x, true), vec2<bool>(!var_1, arg_1 == 4294967295u)));
    global4 = !select(vec2<bool>(select(false, !global4.x, any(vec2<bool>(global4.x, var_1))), true), select(select(vec2<bool>(true, global4.x), vec2<bool>(var_1, false), false), select(vec2<bool>(false, global4.x), !vec2<bool>(global4.x, true), arg_3 > 575f), all(!vec3<bool>(false, false, var_1))), vec2<bool>(false, false));
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 1u) & global3[_wgslsmith_index_u32(global2.x, 29u)], firstTrailingBit(global3[_wgslsmith_index_u32(0u, 29u)])) & ~_wgslsmith_mult_u32(arg_1, 4294967295u), reverseBits(arg_1), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 0u, 40794u, arg_1), firstTrailingBit(vec4<u32>(22570u, arg_1, arg_1, 4294967295u))))), 0i);
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-408f, -703f)), _wgslsmith_div_f32(-207f, -641f), true | global4.x)) * _wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(select(-1000f, -289f, global4.x))))), -104f, 1000f, 1f);
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 29>();
    let var_0 = firstLeadingBit(vec4<u32>(~select(8307u << (global2.x % 32u), 11566u, !global4.x), global2.x, 100408u, select(global2.x, global2.x, all(select(vec4<bool>(false, true, global4.x, global4.x), vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(true, global4.x, global4.x, false))))));
    let var_1 = func_5(func_4(Struct_3(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(min(-377f, -1865f))), 1f, -312f), 0u, reverseBits(u_input.c.x), 971f));
    var var_2 = Struct_1(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.yww, var_0.ywz), vec3<u32>(global2.x, 5868u, var_0.x)), _wgslsmith_clamp_u32(2343u, func_5(Struct_1(vec3<u32>(global2.x, 0u, 1u), u_input.b)), abs(4294967295u)), _wgslsmith_div_u32(~138889u, ~76756u))), u_input.c.x);
    global3 = array<vec3<u32>, 29>();
    global2 = func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-333f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1694f * 1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1660f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1831f)))) * -925f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-958f)) + _wgslsmith_f_op_f32(-1436f + -1300f))))), countOneBits(min(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(30058u, 75057u, 74162u), global3[_wgslsmith_index_u32(var_2.a.x, 29u)]), var_0.xxy << (var_2.a % vec3<u32>(32u))), abs(~var_1))), abs(firstLeadingBit(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, u_input.c.x, u_input.b, global1[_wgslsmith_index_u32(76166u, 9u)]), vec4<i32>(-10248i, var_2.b, global1[_wgslsmith_index_u32(var_2.a.x, 9u)], u_input.b))))), _wgslsmith_f_op_f32(func_3(Struct_3(1104f, _wgslsmith_f_op_f32(trunc(-176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-888f))), -846f), any(select(select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, global4.x, true), vec3<bool>(true, global4.x, global4.x)), select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, false, false), vec3<bool>(true, global4.x, global4.x)), !vec3<bool>(global4.x, true, false))), !(!(!global4.x)), abs(u_input.c.wx << (global2.yz % vec2<u32>(32u)))))).a;
    var var_3 = _wgslsmith_dot_vec2_i32(-max(countOneBits(u_input.c.yx), -vec2<i32>(0i, 2147483647i)), u_input.c.yz) >= (i32(-1i) * -(~u_input.b));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, all(vec2<bool>(global4.x, true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(622f, -347f, -1000f), vec3<f32>(776f, -1019f, -1486f)))))))) == -1567f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(countOneBits(0i), select(-u_input.a, -global1[_wgslsmith_index_u32(global2.x, 9u)], false), ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(~3953u, 9u)], firstTrailingBit(global1[_wgslsmith_index_u32(0u, 9u)])), ~(~28809i)));
}

