struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: i32;

var<private> global1: array<Struct_5, 11>;

var<private> global2: i32;

var<private> global3: array<i32, 11>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec2<f32>) -> Struct_3 {
    global0 = firstTrailingBit(0i);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(223f, _wgslsmith_f_op_f32(114f * -407f))), _wgslsmith_f_op_f32(min(734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f)))), 1000f, -2166f);
    var var_1 = vec2<i32>(~u_input.a, u_input.a) | reverseBits(select(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(20386u, 11u)]), vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(50529u, 11u)]))), vec2<i32>(global3[_wgslsmith_index_u32(~1u, 11u)], _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 11u)], -22376i))), any(!vec2<bool>(arg_1.b.b.x, false))));
    let var_2 = _wgslsmith_f_op_f32(arg_3.x - 863f);
    return arg_1;
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<Struct_5, 11>();
    let var_0 = -2147483647i;
    let var_1 = !(arg_0.a.a & false) && arg_0.b.b.x;
    var var_2 = vec4<bool>(false, func_2(Struct_4(arg_0.a, reverseBits(~u_input.c)), Struct_3(Struct_2(!arg_0.b.b.x, -676f), func_2(Struct_4(arg_0.a, vec3<u32>(u_input.c.x, 77418u, 0u)), func_2(Struct_4(Struct_2(false, 548f), vec3<u32>(1u, u_input.c.x, u_input.c.x)), arg_0, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 36635u), vec2<f32>(arg_0.a.b, 151f)), vec4<u32>(0u, 4294967295u, 0u, 37916u), vec2<f32>(arg_0.a.b, -532f)).b), firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.c.x, 95549u, 35530u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1334f, -649f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(229f, 454f)), vec2<f32>(arg_0.a.b, -1278f))))).b.b.x, !all(vec3<bool>(true, arg_0.a.a, false)), _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, 1u >> (u_input.c.x % 32u)) <= u_input.c.x);
    var var_3 = Struct_4(arg_0.a, u_input.c);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-625f, var_3.a.b)));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.c.xz;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-941f * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1518f)), -553f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -1000f), _wgslsmith_f_op_f32(-1000f - -421f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-525f + 957f)), _wgslsmith_f_op_f32(func_3(func_2(Struct_4(Struct_2(true, 700f), vec3<u32>(arg_0, arg_1, arg_1)), Struct_3(Struct_2(true, 2398f), Struct_1(276f, vec4<bool>(true, false, false, true))), vec4<u32>(var_0.x, arg_0, 56043u, 0u), vec2<f32>(-1040f, -113f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(Struct_4(Struct_2(true, -175f), vec3<u32>(u_input.c.x, u_input.c.x, arg_1)), Struct_3(Struct_2(true, 136f), func_2(Struct_4(Struct_2(true, 560f), vec3<u32>(arg_0, 21273u, u_input.c.x)), Struct_3(Struct_2(false, 1227f), Struct_1(-1000f, vec4<bool>(true, false, true, false))), vec4<u32>(u_input.c.x, arg_1, var_0.x, 4294967295u), vec2<f32>(-1605f, -295f)).b), max(reverseBits(vec4<u32>(0u, 0u, arg_1, 41340u)), ~vec4<u32>(4294967295u, 4294967295u, arg_0, var_0.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1347f, -255f))))).b.a, 594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) + 754f)));
    var var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.xy, u_input.c.yy), vec2<u32>(u_input.c.x, 1u)) > (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 31001u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, arg_0, 0u)) ^ 77964u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), func_2(Struct_4(func_2(Struct_4(Struct_2(true, var_2.x), vec3<u32>(26981u, u_input.c.x, 44502u)), Struct_3(Struct_2(true, var_2.x), Struct_1(509f, vec4<bool>(true, false, false, false))), ~vec4<u32>(0u, var_0.x, 1u, 1u), _wgslsmith_f_op_vec2_f32(-var_2.yx)).a, vec3<u32>(u_input.c.x, 48376u << (arg_1 % 32u), 1u)), Struct_3(Struct_2(true, _wgslsmith_f_op_f32(min(1735f, var_2.x))), Struct_1(_wgslsmith_f_op_f32(-var_2.x), vec4<bool>(true, true, true, true))), max(reverseBits(vec4<u32>(arg_0, 1u, 36659u, var_0.x)), abs(vec4<u32>(arg_0, 0u, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yx) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yx), var_2.zx))).b);
    var_1 = -115f;
    return func_2(Struct_4(var_3.a, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1, 1u), vec3<u32>(var_0.x, 12399u, 56021u) << (vec3<u32>(30489u, u_input.c.x, 0u) % vec3<u32>(32u))), 0u, ~arg_1)), func_2(Struct_4(func_2(Struct_4(var_3.a, vec3<u32>(21498u, 0u, 33054u)), Struct_3(Struct_2(false, var_3.a.b), Struct_1(var_2.x, vec4<bool>(false, false, var_3.a.a, var_3.a.a))), vec4<u32>(u_input.c.x, arg_0, u_input.c.x, 76648u), _wgslsmith_f_op_vec2_f32(-var_2.xx)).a, u_input.c), Struct_3(Struct_2(true, 1000f), Struct_1(var_3.b.a, vec4<bool>(true, false, true, var_3.b.b.x))), vec4<u32>(30990u, ~_wgslsmith_div_u32(0u, var_0.x), 4294967295u, _wgslsmith_sub_u32(0u, u_input.c.x & var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(376f, -209f)))) * _wgslsmith_f_op_vec2_f32(-var_2.yy))), _wgslsmith_add_vec4_u32(abs(select(vec4<u32>(arg_1, 51830u, arg_0, u_input.c.x), vec4<u32>(arg_1, arg_1, 4294967295u, 1u), var_3.b.b.x)), vec4<u32>(0u, arg_1, 0u, 0u) | vec4<u32>(41870u, 1u, 21431u, 35115u)) >> ((~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, arg_1, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, arg_1, arg_1, 1u)) >> (vec4<u32>(abs(4294967295u), ~33878u, ~arg_0, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), var_2.zy).b;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_5 {
    let var_0 = vec2<bool>(!arg_1.b.x, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1489f, 902f))))));
    let var_2 = vec2<bool>(false, true);
    var var_3 = vec2<bool>(any(vec3<bool>(any(arg_1.b), func_2(Struct_4(Struct_2(arg_1.b.x, arg_0.x), vec3<u32>(9987u, u_input.c.x, u_input.c.x)), Struct_3(Struct_2(arg_1.b.x, var_1.x), Struct_1(-105f, arg_1.b)), vec4<u32>(24907u, 0u, u_input.c.x, u_input.c.x), arg_0.yy).b.b.x, var_0.x)) || true, true);
    var var_4 = _wgslsmith_mod_u32(36883u, u_input.c.x);
    return global1[_wgslsmith_index_u32(u_input.c.x, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -30434i;
    global2 = reverseBits(29244i) & -countOneBits(abs(var_0) ^ (var_0 ^ -15230i));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-275f + 311f), _wgslsmith_div_f32(1216f, 167f), -2147f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1267f, -1511f, 2177f))))), func_1(abs(u_input.c.x), countOneBits(firstLeadingBit(1u)) & (_wgslsmith_sub_u32(4294967295u, u_input.c.x) ^ _wgslsmith_div_u32(77204u, u_input.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-194f, _wgslsmith_div_f32(1671f, 650f))), -368f)), ~countOneBits(select(vec4<i32>(-2147483647i, -56719i, var_0, 0i), countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(14778u, 11u)], u_input.b, -2147483647i, -2147483647i)), 17884i >= var_0)));
    global3 = array<i32, 11>();
    let var_2 = var_1.a.a;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-204f, var_1.a.a, var_1.b.a) + vec3<f32>(-1622f, var_2, var_1.a.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a, var_2, var_2))), func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1806f, var_1.b.a, var_1.b.a))), Struct_1(555f, var_1.b.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-130f, var_1.a.a), vec2<f32>(var_1.a.a, -455f))), select(vec4<i32>(0i, u_input.b, global3[_wgslsmith_index_u32(1u, 11u)], -1i), vec4<i32>(var_0, 10835i, var_0, -1i), var_1.b.b.x)).a, vec2<f32>(-519f, -521f), -vec4<i32>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(u_input.c.x, 11u)], var_0, global3[_wgslsmith_index_u32(u_input.c.x, 11u)])).b.a)), _wgslsmith_f_op_f32(186f * _wgslsmith_f_op_f32(-var_2)));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(822f)), _wgslsmith_f_op_f32(func_4(vec3<f32>(var_2, -310f, var_1.b.a), Struct_1(var_2, vec4<bool>(false, var_1.a.b.x, var_1.b.b.x, false)), vec2<f32>(var_2, var_1.b.a), vec4<i32>(1i, 2147483647i, var_0, 2147483647i)).b.a - _wgslsmith_f_op_f32(-var_3.x))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1746f, 1067f) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.a, var_1.a.a), vec2<f32>(var_2, var_3.x)))))));
    var var_4 = vec4<i32>(firstTrailingBit(-2147483647i), global3[_wgslsmith_index_u32(53616u, 11u)], 1i, global3[_wgslsmith_index_u32(33906u, 11u)]);
    var var_5 = func_2(Struct_4(Struct_2(!(var_1.a.b.x | var_1.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - 730f) * var_1.a.a)), vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(53559u, u_input.c.x), u_input.c.x)), func_2(Struct_4(Struct_2(false, var_1.a.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(103112u, 96967u, 9766u), vec3<u32>(20419u, u_input.c.x, 84085u))), func_2(Struct_4(Struct_2(true, var_3.x), abs(vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_3(func_2(Struct_4(Struct_2(var_1.a.b.x, var_2), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), Struct_3(Struct_2(var_1.b.b.x, var_3.x), var_1.b), vec4<u32>(u_input.c.x, u_input.c.x, 24514u, 73222u), vec2<f32>(var_2, 998f)).a, Struct_1(var_1.b.a, vec4<bool>(true, var_1.b.b.x, true, true))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(48750u, 4294967295u, 75389u, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(0u, 0u, 50179u, 29611u)), vec4<u32>(42569u, u_input.c.x, 26527u, 28407u) >> (vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2, -574f))))), vec4<u32>(max(27723u, ~u_input.c.x), _wgslsmith_add_u32(68642u >> (u_input.c.x % 32u), _wgslsmith_clamp_u32(u_input.c.x, 18343u, 38501u)), ~(~1u), 31755u << (~u_input.c.x % 32u)), vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_1.a.a))), select(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(~69137u, 39902u, firstLeadingBit(66223u), max(u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), select((vec4<u32>(u_input.c.x, 1u, 16528u, 6293u) ^ vec4<u32>(0u, u_input.c.x, 25275u, u_input.c.x)) << (vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(91465u, u_input.c.x >> (4294967295u % 32u), select(11794u, u_input.c.x, false), reverseBits(4294967295u)), vec4<bool>(true, false, var_1.b.b.x, !var_1.b.b.x)), !var_1.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a)), var_1.a.a))).a;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(firstTrailingBit(global3[_wgslsmith_index_u32(u_input.c.x, 11u)]), -11994i, countOneBits(u_input.a), 0i), ~vec4<i32>(0i, var_4.x, var_0, -2147483647i), var_4.x >= -76063i) ^ vec4<i32>(_wgslsmith_add_i32(-1i, global3[_wgslsmith_index_u32(u_input.c.x, 11u)]) & 1i, var_0, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 1i, u_input.b), var_4.yww), abs(_wgslsmith_clamp_i32(var_0, 27503i, u_input.b))));
}

