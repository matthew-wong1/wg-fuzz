struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(0u, -726f, 32354u), Struct_1(31212u, 460f, 0u), Struct_1(43223u, 153f, 0u), Struct_1(0u, 747f, 14668u), Struct_1(1u, -1000f, 17155u), Struct_1(0u, -451f, 27651u), Struct_1(81101u, -685f, 32609u), Struct_1(4294967295u, 1591f, 4294967295u), Struct_1(29114u, 604f, 15299u), Struct_1(32729u, -535f, 4294967295u), Struct_1(1u, -990f, 47129u), Struct_1(4294967295u, -126f, 4294967295u), Struct_1(0u, 1016f, 0u), Struct_1(0u, 956f, 1u), Struct_1(0u, 832f, 16090u), Struct_1(35950u, -857f, 51580u), Struct_1(17818u, 251f, 40356u), Struct_1(0u, -519f, 0u));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, global2.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1328f, 1733f) + vec2<f32>(-1210f, 523f)) + vec2<f32>(global2.b, 112f))), vec2<f32>(_wgslsmith_f_op_f32(sign(603f)), _wgslsmith_f_op_f32(sign(global2.b))))));
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_div_i32(2147483647i, -(u_input.d & u_input.d)), u_input.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1215f * var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1067f))), 1u);
    global0 = array<vec2<bool>, 32>();
    var var_2 = select(vec2<bool>(u_input.d >= u_input.b.x, false), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26575u, 84927u, 1u), vec4<u32>(1u, var_1.c, var_1.c, 55160u)) <= ~u_input.c)), select(global0[_wgslsmith_index_u32(~global2.a & firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(7012u, 68582u, 21064u), vec3<u32>(var_1.c, 13705u, 1u))), 32u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.a, ~abs(u_input.c)), 32u)], true));
    let var_3 = Struct_4(var_1.b, global1[_wgslsmith_index_u32(u_input.c, 18u)]);
    return _wgslsmith_f_op_f32(step(1059f, var_0.x));
}

fn func_2() -> vec3<i32> {
    let var_0 = (vec4<u32>(11587u, ~1u, _wgslsmith_div_u32(~u_input.c, u_input.c), global2.a) ^ countOneBits(vec4<u32>(min(global2.a, global2.c), ~4294967295u, ~u_input.c, 58624u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, firstLeadingBit(_wgslsmith_clamp_u32(global2.a, global2.a, global2.a)), ~u_input.c, global2.c), vec4<u32>(13025u, _wgslsmith_div_u32(~51245u, global2.c), ~global2.c, ~158303u));
    var var_1 = Struct_3(vec3<bool>((1u <= _wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(var_0.x, global2.c))) & false, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), Struct_2(~vec2<i32>(0i, u_input.a.x & 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1164f) * _wgslsmith_f_op_f32(-737f - _wgslsmith_f_op_f32(global2.b - -3229f))), ~(~8706u)), u_input.a.x, global2.b);
    global0 = array<vec2<bool>, 32>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f * -376f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(674f, global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + var_1.b.b), global2.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -928f, 1000f, -243f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(761f, global2.b, 459f, var_1.b.b) * vec4<f32>(global2.b, global2.b, 118f, var_1.b.b)) * vec4<f32>(-777f, -926f, var_1.d, -1000f)))));
    let var_3 = countOneBits(u_input.a);
    return var_3.wzy >> (~var_0.xxz % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>) -> Struct_3 {
    return Struct_3(select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), vec3<bool>(any(global0[_wgslsmith_index_u32(115460u, 32u)]), any(vec2<bool>(true, false)), true), false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, all(vec3<bool>(true, true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), true)), Struct_2(-(~(-arg_0.yx)), global2.b, abs(27496u)), arg_0.x, global2.b);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = arg_1.b;
    var_0 = func_4(vec3<i32>(var_0.a.x, _wgslsmith_mod_i32(reverseBits(-68332i), 43892i), abs(firstTrailingBit(u_input.b.x | arg_1.c)))).b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, global2.b, -609f) * vec4<f32>(var_0.b, var_0.b, arg_1.b.b, -1844f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1000f, -1110f, global2.b)), !vec4<bool>(true, true, true, arg_0)))))));
    var var_2 = ~u_input.c;
    var var_3 = 1095f;
    return 4294967295u;
}

fn func_1(arg_0: Struct_4) -> i32 {
    var var_0 = u_input.a.xzy << (vec3<u32>(_wgslsmith_mod_u32(306u, 45932u), func_5(true, func_4(func_2()), 55680u), ~(18403u >> (_wgslsmith_div_u32(global2.a, global2.c) % 32u))) % vec3<u32>(32u));
    let var_1 = vec4<i32>(1i, _wgslsmith_add_i32(~_wgslsmith_div_i32(1i, i32(-1i) * -2147483647i), max(0i, ~(~40151i))), _wgslsmith_dot_vec3_i32(reverseBits(-(u_input.a.xwz ^ vec3<i32>(53605i, var_0.x, -2147483647i))), u_input.a.zxz), (-1i << (func_4(~u_input.a.xwx).b.c % 32u)) | u_input.b.x);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = Struct_3(!(!vec3<bool>(all(vec3<bool>(true, false, false)), false, true)), Struct_2(vec2<i32>(u_input.d, -2147483647i), _wgslsmith_div_f32(global2.b, global2.b), global2.a), func_1(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -664f), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(15163u, global2.a, 45115u), vec3<u32>(u_input.c, 49119u, 4294967295u)), -963f, 1u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b + global2.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(528f + _wgslsmith_f_op_f32(exp2(global2.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1044f, global2.b) - global2.b))), firstTrailingBit(var_0) == _wgslsmith_div_i32(~u_input.a.x, 42294i))));
    let var_2 = vec3<u32>(38296u, 0u, global2.a);
    let var_3 = func_4(-(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, var_0), _wgslsmith_div_i32(0i, u_input.a.x), var_1.b.a.x | -6961i) << ((var_2 | countOneBits(vec3<u32>(var_1.b.c, 107119u, u_input.c))) % vec3<u32>(32u))));
    var var_4 = var_3.b;
    var var_5 = 4514u;
    var var_6 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 1135f, -1000f)), vec3<f32>(-338f, global2.b, 1475f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1127f), _wgslsmith_f_op_f32(global2.b - var_3.b.b), var_1.b.b)))))));
    var var_7 = Struct_2(u_input.a.zx, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-615f)))), var_1.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, var_2, ~_wgslsmith_mult_vec3_i32(u_input.a.yxw, vec3<i32>(-2147483647i, 16390i, min(0i, var_1.c))));
}

