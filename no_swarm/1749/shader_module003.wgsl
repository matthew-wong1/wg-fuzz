struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6>;

var<private> global1: i32;

var<private> global2: array<i32, 27>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(38529u, vec2<f32>(308f, 1001f), -875f), Struct_1(31234u, vec2<f32>(-265f, -1154f), 1000f), Struct_1(33790u, vec2<f32>(282f, 362f), 2247f), Struct_1(2099u, vec2<f32>(-1126f, -1000f), 1464f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    let var_0 = arg_1.a;
    let var_1 = arg_0.x < u_input.a;
    var var_2 = ~u_input.a;
    global0 = array<vec2<i32>, 6>();
    var var_3 = Struct_4(vec4<bool>(true, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(680f)), _wgslsmith_f_op_f32(f32(-1f) * -813f), all(vec3<bool>(var_1, var_1, var_1)))) <= -237f, !(!var_1)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b.x, -1220f, arg_1.a.c) - vec3<f32>(654f, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, -593f, var_0.b.x)) * vec3<f32>(-367f, arg_1.a.c, 1540f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -545f, -391f), vec3<f32>(arg_1.a.b.x, var_0.b.x, 579f)))), true)))), vec2<i32>(-1i) * -(vec2<i32>(-1i) * -u_input.c));
    return arg_2.x;
}

fn func_2() -> i32 {
    global2 = array<i32, 27>();
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b & ~1u, 120059u, u_input.b, func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 41136u), vec2<u32>(0u, 1u) ^ vec2<u32>(u_input.a, u_input.b)), Struct_2(Struct_1(u_input.b, vec2<f32>(412f, 591f), 1000f)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(24254u, 1u, u_input.a, 25553u), vec4<u32>(u_input.a, u_input.b, 1u, 4294967295u)), select(vec4<u32>(332u, 13099u, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 4294967295u, 46375u), vec4<bool>(false, true, true, false))))), ~(select(~vec4<u32>(119402u, u_input.a, u_input.b, 4294967295u), min(vec4<u32>(u_input.a, u_input.a, u_input.b, 24103u), vec4<u32>(62454u, 4294967295u, 53603u, u_input.a)), true) & vec4<u32>(~u_input.a, 4936u, ~u_input.b, 1u)));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(1i, -firstLeadingBit(select(-1i, u_input.c.x, false))), _wgslsmith_mod_i32(u_input.e, firstTrailingBit(_wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(89361u, 27u)], ~1i))));
    global1 = 0i;
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(~((var_0.x ^ 1u) ^ 4294967295u) | 65053u, 4u)], Struct_2(Struct_1(reverseBits(~56071u), vec2<f32>(_wgslsmith_f_op_f32(ceil(286f)), _wgslsmith_f_op_f32(-834f * 183f)), 1f)), ~abs(countOneBits(reverseBits(var_1.x))));
    return 2147483647i;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = -vec3<i32>(reverseBits(~7613i), _wgslsmith_add_i32(func_2(), -1i), 31865i) & vec3<i32>(_wgslsmith_mult_i32(min(1i, max(13715i, arg_0.x)), global2[_wgslsmith_index_u32(u_input.b, 27u)]), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.x, -2147483647i, -31617i, 1i), reverseBits(vec4<i32>(u_input.d, global2[_wgslsmith_index_u32(u_input.a, 27u)], 1i, global2[_wgslsmith_index_u32(0u, 27u)]))), global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 27u)]), arg_0.x);
    let var_1 = -u_input.c;
    global1 = _wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u & (u_input.b & 84990u), 27u)], -(~select(var_0.x | 35387i, ~(-338i), false)));
    let var_2 = 1f;
    let var_3 = select(!vec4<bool>(any(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, false, true)), select(true, true, true), any(vec2<bool>(true, true)) || any(vec4<bool>(false, false, true, false))), select(!vec4<bool>(true, false, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, true))), vec4<bool>(select(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, false))), true, true, true), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), u_input.b != 19531u), vec4<bool>(false, true, true, -655f == var_2)));
    return 1f;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global2 = array<i32, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.c, 1158f))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), arg_0.b.x, arg_0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1157f, -908f, -2269f) + vec3<f32>(arg_0.b.x, 1288f, -734f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.c) * vec3<f32>(arg_0.b.x, arg_0.c, arg_0.b.x))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, _wgslsmith_f_op_f32(step(var_0.x, -1085f)), var_0.x, _wgslsmith_f_op_f32(411f * -1869f)))) - vec4<f32>(_wgslsmith_div_f32(625f, -290f), 1225f, -379f, var_0.x));
    var var_2 = -_wgslsmith_dot_vec3_i32(-(vec3<i32>(global2[_wgslsmith_index_u32(arg_0.a, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)], 2147483647i) ^ vec3<i32>(2147483647i, 43159i, u_input.e)) ^ ~(~vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 27u)])), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-32142i, u_input.d, u_input.d), vec3<i32>(u_input.e, -14211i, u_input.d)), -vec3<i32>(7512i, u_input.e, u_input.e)));
    var var_3 = Struct_1(1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b * var_1.yz), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.xy)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-323f + var_0.x) + 1000f))));
    return Struct_4(vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.c)), _wgslsmith_f_op_f32(-1000f - 384f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b.x - -1000f), 102f))), -548f, _wgslsmith_f_op_f32(1033f + -817f)), global0[_wgslsmith_index_u32(51000u, 6u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(39140u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(765f - -1290f), _wgslsmith_f_op_f32(f32(-1f) * -280f)) - vec2<f32>(-1131f, _wgslsmith_div_f32(-1627f, -1387f))), _wgslsmith_f_op_f32(func_1(u_input.c))));
    let var_1 = func_4(Struct_1(_wgslsmith_mult_u32(~23115u, 0u), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-1126f - _wgslsmith_f_op_f32(select(var_0.b.x, -1488f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<i32>(-28381i, var_0.c.x))) + -1403f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, -581f, true))))));
    let var_2 = Struct_2(Struct_1(56291u, _wgslsmith_f_op_vec2_f32(exp2(var_0.b.yz)), -753f));
    let var_3 = _wgslsmith_mult_vec3_i32(~max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, 57785i, 0i), vec3<i32>(var_0.c.x, var_1.c.x, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.c.x, 2147483647i), vec3<i32>(var_0.c.x, var_1.c.x, 2482i))), vec3<i32>(~firstTrailingBit(u_input.c.x), countOneBits(-6630i), ~(-32724i))) >> (~(~abs(vec3<u32>(var_2.a.a, u_input.a, 37704u))) % vec3<u32>(32u));
    var var_4 = Struct_3(Struct_1(~(~_wgslsmith_mult_u32(1u, 1u)), vec2<f32>(var_2.a.c, var_2.a.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -796f))), _wgslsmith_f_op_f32(round(-760f)), (u_input.d >= 0i) || func_4(var_2.a).a.x))), Struct_2(Struct_1(~1112u, var_1.b.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a.b.x)) - _wgslsmith_f_op_f32(-648f + 141f)))), var_0.c.x << (0u % 32u));
    let var_5 = var_4.b.a;
    let var_6 = vec4<f32>(1209f, 1200f, _wgslsmith_f_op_f32(ceil(var_4.a.b.x)), var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_2.a.a, var_4.b.a.a), 0u), ~var_2.a.a, 10575u)), ~_wgslsmith_sub_vec4_i32(min(-vec4<i32>(var_3.x, -17327i, var_0.c.x, var_0.c.x), abs(vec4<i32>(global2[_wgslsmith_index_u32(var_5.a, 27u)], var_4.c, 29125i, -62004i))), vec4<i32>(var_3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-3213i, 8637i), vec2<i32>(var_0.c.x, var_3.x)), ~(-14159i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.x, 2455i), vec2<i32>(var_3.x, 1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_6))), _wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, -1i, 0i, global2[_wgslsmith_index_u32(1u, 27u)]), vec4<i32>(var_3.x, -2147483647i, var_3.x, -38942i) << (vec4<u32>(27090u, 4294967295u, var_2.a.a, var_4.b.a.a) % vec4<u32>(32u))), ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(1u, 27u)], 2395i, 2147483647i, global2[_wgslsmith_index_u32(var_5.a, 27u)])), abs(vec4<i32>(-2147483647i, var_4.c, var_0.c.x, -1i)))));
}

