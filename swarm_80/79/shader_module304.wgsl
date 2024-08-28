struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(0u, -9741i, vec2<bool>(true, false)), Struct_3(92283u, 0i, vec2<bool>(false, false)), Struct_3(58351u, i32(-2147483648), vec2<bool>(true, false)), Struct_3(0u, 23044i, vec2<bool>(true, true)), Struct_3(1u, 2147483647i, vec2<bool>(true, true)), Struct_3(36373u, -1i, vec2<bool>(false, false)), Struct_3(4294967295u, 23546i, vec2<bool>(true, false)), Struct_3(4294967295u, 1i, vec2<bool>(true, false)), Struct_3(16368u, 15434i, vec2<bool>(true, true)), Struct_3(50104u, 2147483647i, vec2<bool>(true, true)), Struct_3(0u, 0i, vec2<bool>(false, true)), Struct_3(0u, 0i, vec2<bool>(true, false)), Struct_3(14518u, 2147483647i, vec2<bool>(false, true)), Struct_3(34815u, 9691i, vec2<bool>(false, true)), Struct_3(1u, 31295i, vec2<bool>(false, false)), Struct_3(30611u, 2147483647i, vec2<bool>(false, false)), Struct_3(0u, -9071i, vec2<bool>(false, true)), Struct_3(3969u, 2147483647i, vec2<bool>(true, true)), Struct_3(4294967295u, -4577i, vec2<bool>(true, false)), Struct_3(4294967295u, i32(-2147483648), vec2<bool>(true, false)), Struct_3(0u, i32(-2147483648), vec2<bool>(true, false)), Struct_3(6988u, i32(-2147483648), vec2<bool>(false, false)), Struct_3(31591u, -1i, vec2<bool>(true, false)), Struct_3(0u, -1i, vec2<bool>(true, false)), Struct_3(103989u, 33415i, vec2<bool>(true, true)), Struct_3(0u, 1i, vec2<bool>(true, false)), Struct_3(4294967295u, -19211i, vec2<bool>(false, true)), Struct_3(38478u, 8796i, vec2<bool>(false, false)), Struct_3(4294967295u, i32(-2147483648), vec2<bool>(true, false)));

var<private> global1: array<Struct_4, 20>;

var<private> global2: array<bool, 23> = array<bool, 23>(true, true, true, false, true, false, false, false, false, false, true, true, true, true, true, true, false, true, false, false, false, false, true);

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(true, Struct_1(vec4<u32>(70657u, 1u, 40647u, 10979u)), Struct_1(vec4<u32>(0u, 0u, 3170u, 91939u)), 38514u), Struct_2(true, Struct_1(vec4<u32>(95166u, 0u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 16588u, 47833u, 1u)), 1u), Struct_2(false, Struct_1(vec4<u32>(61243u, 0u, 27530u, 58019u)), Struct_1(vec4<u32>(33261u, 80945u, 14001u, 15679u)), 13100u), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 4407u, 62851u, 1u)), Struct_1(vec4<u32>(25848u, 4294967295u, 19900u, 1u)), 1u), Struct_2(false, Struct_1(vec4<u32>(57990u, 4294967295u, 0u, 39747u)), Struct_1(vec4<u32>(48929u, 0u, 53682u, 2125u)), 49382u));

var<private> global4: array<u32, 16> = array<u32, 16>(46609u, 68179u, 8613u, 18354u, 31156u, 4294967295u, 15983u, 0u, 45225u, 71750u, 30906u, 4294967295u, 0u, 63705u, 13991u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = -(2147483647i ^ ~(firstTrailingBit(-69027i) ^ ~u_input.b.x));
    global3 = array<Struct_2, 5>();
    let var_1 = u_input.a;
    global4 = array<u32, 16>();
    global2 = array<bool, 23>();
    return ~arg_0.d;
}

fn func_2(arg_0: Struct_4) -> vec4<u32> {
    global3 = array<Struct_2, 5>();
    return firstLeadingBit(_wgslsmith_div_vec4_u32(abs(_wgslsmith_mod_vec4_u32(arg_0.a.b.a, arg_0.a.c.a)) & _wgslsmith_sub_vec4_u32(arg_0.a.b.a, arg_0.a.c.a), vec4<u32>(~arg_0.b | ~0u, ~(~global4[_wgslsmith_index_u32(arg_0.a.c.a.x, 16u)]), global4[_wgslsmith_index_u32(~19083u, 16u)], ~arg_0.b ^ func_1(Struct_2(arg_0.a.a, Struct_1(vec4<u32>(60309u, arg_0.b, arg_0.b, 3981u)), Struct_1(arg_0.a.c.a), 48146u), arg_0.a.d))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_3(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(1u, 0u >> (_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 1u) % 32u))), u_input.b.x | (2147483647i << (global4[_wgslsmith_index_u32(30010u, 16u)] % 32u)), arg_1.xz);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1064f, -1044f)))))) * _wgslsmith_f_op_f32(floor(-620f))));
    var var_2 = Struct_4(Struct_2(true, Struct_1(firstTrailingBit(abs(vec4<u32>(4294967295u, 0u, global4[_wgslsmith_index_u32(var_0.a, 16u)], var_0.a)))), Struct_1(select(~vec4<u32>(var_0.a, var_0.a, var_0.a, global4[_wgslsmith_index_u32(37688u, 16u)]), _wgslsmith_div_vec4_u32(vec4<u32>(50260u, 4294967295u, var_0.a, 0u), vec4<u32>(25727u, 5348u, var_0.a, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28373u, 16u)], 16u)], 16u)], 16u)])), all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 23u)], var_0.c.x, true, false)))), ~(~firstLeadingBit(var_0.a))), _wgslsmith_mod_u32(4294967295u, ~130529u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1220f, 1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(818f, -1178f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(925f, 308f), vec2<f32>(-1127f, 573f))), any(vec4<bool>(true, arg_0, global2[_wgslsmith_index_u32(48861u, 23u)], true)))) + vec2<f32>(_wgslsmith_f_op_f32(-327f * -1138f), _wgslsmith_f_op_f32(f32(-1f) * -322f)))));
    var var_3 = _wgslsmith_mod_vec2_u32(select(reverseBits(vec2<u32>(0u, var_0.a)), firstLeadingBit(~var_2.a.b.a.xx), vec2<bool>(!arg_0, any(vec3<bool>(false, true, arg_1.x)))), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(4294967295u), 4294967295u), vec2<u32>(~1u, ~var_0.a))) & var_2.a.c.a.ww;
    var var_4 = select(vec2<u32>(_wgslsmith_add_u32(~var_0.a, ~1u), _wgslsmith_div_u32(abs(var_3.x), var_0.a)), min(~vec2<u32>(global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(var_2.b, 16u)]), func_2(global1[_wgslsmith_index_u32(93401u, 20u)]).xz), !vec2<bool>(true, arg_0)) >> (var_2.a.c.a.xy % vec2<u32>(32u));
    return select(!arg_1, arg_1, select(!select(arg_1, arg_1, !arg_1), vec3<bool>(526f != _wgslsmith_f_op_f32(-var_2.c.x), var_0.c.x, var_2.a.a), !arg_1.x));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: bool) -> Struct_3 {
    let var_0 = !arg_3;
    global3 = array<Struct_2, 5>();
    global0 = array<Struct_3, 29>();
    var var_1 = global0[_wgslsmith_index_u32(~arg_0, 29u)];
    global0 = array<Struct_3, 29>();
    return Struct_3(~arg_0, _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.d.x, var_1.b, u_input.c.x, u_input.d.x) >> (vec4<u32>(38407u, 0u, 1u, var_1.a) % vec4<u32>(32u))) << (~(vec4<u32>(var_1.a, 125281u, var_1.a, arg_1.x) ^ arg_1) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, _wgslsmith_sub_i32(u_input.c.x, -17269i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), u_input.c.xz)), vec4<i32>(-2147483647i, -1i, 41219i, 1i))), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(select(max(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)]), ~vec2<u32>(4294967295u, 118438u)), ~(vec2<u32>(0u, global4[_wgslsmith_index_u32(0u, 16u)]) ^ vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25540u, 16u)], 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41078u, 16u)], 16u)], 16u)])), all(vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20411u, 16u)], 16u)], 16u)], 23u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 23u)]))), vec2<u32>(func_1(Struct_2(true, Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(54507u, 16u)], 18922u, 33794u)), Struct_1(vec4<u32>(97256u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29400u, 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29821u, 16u)], 16u)], global4[_wgslsmith_index_u32(59526u, 16u)])), global4[_wgslsmith_index_u32(48330u, 16u)]), 1u), ~10802u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], 24590u, 0u, global4[_wgslsmith_index_u32(26582u, 16u)]), ~vec4<u32>(0u, 44913u, 11409u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)])) | ((vec4<u32>(global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)]) & vec4<u32>(global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(43049u, 16u)], 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)])) << (func_2(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 20u)]) % vec4<u32>(32u))), ~vec4<u32>(global4[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21150u, 16u)], 16u)], 16u)], 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(3332u, 16u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 4294967295u, 1u, global4[_wgslsmith_index_u32(4294967295u, 16u)])), 1045u, ~65706u)), ~func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6147u, 16u)], 16u)] >> (global4[_wgslsmith_index_u32(1u, 16u)] % 32u), global4[_wgslsmith_index_u32(4294967295u, 16u)]), 20u)]).wyy, any(func_3(any(!vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 23u)], false, false)), vec3<bool>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6658u, 16u)], 16u)], 16u)] < 0u, true, !global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49679u, 16u)], 16u)], 23u)]))));
    var var_1 = var_0.c.x;
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, ~(~(~global4[_wgslsmith_index_u32(var_0.a, 16u)]))), 5u)];
    global3 = array<Struct_2, 5>();
    let var_3 = true;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1000f)))) + 1253f) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(451f))))))));
    var_1 = true;
    var var_4 = Struct_4(Struct_2(all(select(vec2<bool>(false, var_3), vec2<bool>(true, var_0.c.x), false)) || var_3, var_2.b, Struct_1(vec4<u32>(var_2.c.a.x, var_0.a, 4294967295u, 4294967295u) ^ var_2.b.a), ~var_2.d), ~global4[_wgslsmith_index_u32(46763u, 16u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-392f, 347f, false)), -1084f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1037f, 204f)) - _wgslsmith_f_op_f32(floor(-1495f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1074f, var_4.c.x, var_4.c.x, -921f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.c.x, var_4.c.x, var_4.c.x, 1490f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-161f, -1011f, var_4.c.x, 719f), vec4<f32>(var_4.c.x, var_4.c.x, var_4.c.x, -801f), var_4.a.a)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(0u, 23u)]), var_2.a)))))), var_4.c.x, u_input.c);
}

