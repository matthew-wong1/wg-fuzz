struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<u32, 15>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-834f, 1237f, 1000f, -261f), vec4<i32>(8512i, 21124i, 7118i, 33733i), vec3<bool>(true, false, false), vec4<i32>(-22225i, 1i, 1i, 0i)), Struct_1(vec4<f32>(836f, 445f, 689f, 1000f), vec4<i32>(31296i, 1i, -1i, -23383i), vec3<bool>(false, false, false), vec4<i32>(1i, 16879i, 0i, -19910i)), Struct_1(vec4<f32>(1000f, 965f, 1903f, -860f), vec4<i32>(-24814i, 63050i, 1i, i32(-2147483648)), vec3<bool>(false, false, true), vec4<i32>(-1i, -16090i, -40366i, -24200i)), Struct_1(vec4<f32>(1000f, 231f, -1151f, -2268f), vec4<i32>(-2634i, 2147483647i, -1030i, -4746i), vec3<bool>(true, false, false), vec4<i32>(-1i, -19838i, 1i, 17310i)), Struct_1(vec4<f32>(1366f, 340f, 452f, 1423f), vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<i32>(-74670i, 23893i, 3261i, 1i)), Struct_1(vec4<f32>(-348f, -149f, 1610f, 283f), vec4<i32>(9026i, -22620i, 1i, 17291i), vec3<bool>(false, true, true), vec4<i32>(1i, -30310i, -5634i, -60957i)), Struct_1(vec4<f32>(-712f, 1000f, -320f, -658f), vec4<i32>(60320i, -1876i, -525i, 3699i), vec3<bool>(true, true, false), vec4<i32>(i32(-2147483648), 70853i, 1i, 2147483647i)), Struct_1(vec4<f32>(-611f, 395f, -848f, 530f), vec4<i32>(2147483647i, 0i, 1i, -47949i), vec3<bool>(false, false, false), vec4<i32>(41087i, 2147483647i, -31617i, -5725i)), Struct_1(vec4<f32>(719f, -1442f, 774f, 1110f), vec4<i32>(29394i, 1i, -19820i, -1i), vec3<bool>(false, true, true), vec4<i32>(-1i, 1i, 14966i, -23328i)), Struct_1(vec4<f32>(-791f, 1128f, 1321f, 228f), vec4<i32>(-60096i, 36284i, -33830i, 2147483647i), vec3<bool>(false, false, false), vec4<i32>(2147483647i, 2147483647i, 0i, -37329i)), Struct_1(vec4<f32>(-2074f, -1060f, -1132f, 1613f), vec4<i32>(406i, 26315i, i32(-2147483648), 1i), vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), 11898i, i32(-2147483648), 0i)), Struct_1(vec4<f32>(189f, -1000f, 493f, -1339f), vec4<i32>(-40018i, i32(-2147483648), 29221i, -1i), vec3<bool>(false, false, true), vec4<i32>(-46390i, -11525i, 1i, 2147483647i)), Struct_1(vec4<f32>(503f, -354f, 682f, -1292f), vec4<i32>(-33110i, 0i, 1i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<i32>(-1i, -5532i, 0i, 0i)), Struct_1(vec4<f32>(-1230f, 322f, 1447f, 1336f), vec4<i32>(-28152i, 57301i, 34700i, 0i), vec3<bool>(true, false, false), vec4<i32>(-20937i, 2147483647i, 17857i, 0i)), Struct_1(vec4<f32>(-783f, 440f, -354f, -964f), vec4<i32>(-1i, 54722i, -1i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<i32>(19309i, 32600i, 0i, 11541i)), Struct_1(vec4<f32>(-203f, -2999f, -1406f, -1614f), vec4<i32>(0i, 0i, 7211i, -10113i), vec3<bool>(true, true, false), vec4<i32>(-22039i, 1i, 7239i, 2147483647i)), Struct_1(vec4<f32>(-666f, -781f, -1315f, 624f), vec4<i32>(1i, 2147483647i, -11671i, -56307i), vec3<bool>(true, false, false), vec4<i32>(-1i, -18603i, 47825i, 1i)), Struct_1(vec4<f32>(-594f, -1233f, 780f, 536f), vec4<i32>(25887i, 11602i, -22956i, i32(-2147483648)), vec3<bool>(false, true, false), vec4<i32>(-28198i, i32(-2147483648), -19618i, -1i)), Struct_1(vec4<f32>(-1501f, -1118f, 1597f, 504f), vec4<i32>(83467i, -38333i, -1i, 2147483647i), vec3<bool>(true, true, true), vec4<i32>(3684i, 22759i, 2147483647i, -48487i)), Struct_1(vec4<f32>(1224f, -536f, -132f, -245f), vec4<i32>(i32(-2147483648), 0i, 3873i, 1i), vec3<bool>(true, false, true), vec4<i32>(-1i, -9015i, 7601i, 45761i)), Struct_1(vec4<f32>(752f, -576f, -1323f, -486f), vec4<i32>(-1i, -7078i, -48994i, -1i), vec3<bool>(false, true, false), vec4<i32>(17588i, -1i, 1i, 28917i)), Struct_1(vec4<f32>(-1461f, 310f, -842f, -105f), vec4<i32>(i32(-2147483648), -38792i, -6083i, -7756i), vec3<bool>(false, false, true), vec4<i32>(-1i, i32(-2147483648), -77509i, -44292i)), Struct_1(vec4<f32>(1042f, -172f, -385f, -1126f), vec4<i32>(-1511i, i32(-2147483648), 45225i, 32364i), vec3<bool>(true, true, false), vec4<i32>(-1i, -1i, 2147483647i, 1i)), Struct_1(vec4<f32>(-361f, -368f, 509f, -1000f), vec4<i32>(1i, 49885i, -28809i, 0i), vec3<bool>(false, true, false), vec4<i32>(-1i, 1i, 1i, 0i)));

var<private> global4: array<bool, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~global0.x) >> (global0.x % 32u), 24u)];
    global0 = ~(vec2<u32>(global2[_wgslsmith_index_u32(0u, 15u)], 4294967295u) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 15u)], 0u, global2[_wgslsmith_index_u32(0u, 15u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 15u)], 15u)], global0.x, global2[_wgslsmith_index_u32(4294967295u, 15u)], 0u)), firstTrailingBit(4294967295u)), ~(~vec2<u32>(global2[_wgslsmith_index_u32(global0.x, 15u)], 4294967295u))) % vec2<u32>(32u)));
    let var_2 = arg_0.x;
    let var_3 = global4[_wgslsmith_index_u32(4294967295u, 5u)];
    return -344f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, (global0.x ^ firstLeadingBit(45520u)) >> (global0.x % 32u)), select(7264u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(countOneBits(~0u), 15u)], 15u)] << (1u % 32u), any(select(arg_0.c.zx, vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.x))));
    let var_1 = vec3<i32>(arg_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.x, arg_1.d.x, -10020i, arg_1.d.x) >> (vec4<u32>(0u, var_0, 0u, 0u) % vec4<u32>(32u)), ~vec4<i32>(arg_2, -3261i, arg_2, -2147483647i)) & ((1i >> (1u % 32u)) >> (~(global0.x >> (4294967295u % 32u)) % 32u)), 1i);
    var var_2 = global1[_wgslsmith_index_u32(0u, 14u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-790f, arg_1.a.x, var_2.a.x, arg_1.a.x) - vec4<f32>(arg_1.a.x, -735f, var_2.a.x, 354f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.a, var_2.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, 2474f, var_2.a.x) + arg_0.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_2.a)))))), arg_1.b, vec3<bool>(any(select(!arg_0.c.xz, vec2<bool>(var_2.c.x, false), true)), true, -min(arg_0.d.x, var_1.x) != (_wgslsmith_div_i32(arg_1.b.x, arg_1.b.x) ^ arg_1.d.x)), u_input.e);
    var var_4 = arg_1.c;
    return firstTrailingBit(~vec2<u32>(75336u, 4294967295u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = u_input.e.x;
    global0 = vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(45098u, 0u)), min(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(21554u, 15u)]), vec2<u32>(global0.x, global0.x)) << (func_3(global3[_wgslsmith_index_u32(global0.x, 24u)], global1[_wgslsmith_index_u32(7852u, 14u)], -1i) % vec2<u32>(32u))), ~firstTrailingBit(vec2<u32>(39392u, global2[_wgslsmith_index_u32(4294967295u, 15u)]))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, 4294967295u, func_3(global1[_wgslsmith_index_u32(global0.x, 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 15u)], 24u)], 61130i).x), vec4<u32>(22749u, global2[_wgslsmith_index_u32(4294967295u, 15u)], min(global0.x, global2[_wgslsmith_index_u32(41465u, 15u)]), 17937u)));
    global1 = array<Struct_1, 14>();
    let var_1 = u_input.a;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1320f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1616f)), _wgslsmith_f_op_f32(-941f + arg_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-367f + arg_0.x))))), u_input.d, vec3<bool>(global4[_wgslsmith_index_u32(49344u, 5u)], true, ~(1u ^ global2[_wgslsmith_index_u32(global0.x, 15u)]) <= ~(~global2[_wgslsmith_index_u32(global0.x, 15u)])), -vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -44513i), vec2<i32>(1i, 67763i)), -21581i), -select(arg_1.x, 6932i, global4[_wgslsmith_index_u32(1669u, 5u)]), 1i));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(20337u & global0.x, global2[_wgslsmith_index_u32(45088u, 15u)] >> (global0.x % 32u))) | ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(global0.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(~global0.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(45468u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)]) & vec2<u32>(0u, global2[_wgslsmith_index_u32(global0.x, 15u)]), ~vec2<u32>(global0.x, 44016u)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(vec3<f32>(2456f, -2118f, 1134f))))) + 135f) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(860f, 1028f, 1000f))))))));
    global4 = array<bool, 5>();
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, -886f)), u_input.e))) > _wgslsmith_f_op_f32(1131f + _wgslsmith_f_op_f32(f32(-1f) * -216f)));
    global4 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(-645f, _wgslsmith_f_op_f32(select(-1940f, -1000f, true)))), -1857f, 1f, _wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(-260f - 609f))))), select(vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(7809u, global0.x)), 0u >> (~global0.x % 32u), 27883u), firstTrailingBit(vec3<u32>(~global0.x, global2[_wgslsmith_index_u32(0u, 15u)] >> (global0.x % 32u), ~global2[_wgslsmith_index_u32(0u, 15u)])), !(any(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 5u)], global4[_wgslsmith_index_u32(global0.x, 5u)], global4[_wgslsmith_index_u32(global0.x, 5u)])) & global4[_wgslsmith_index_u32(global0.x, 5u)])), -_wgslsmith_div_vec2_i32(~(-u_input.d.yy), vec2<i32>(min(u_input.d.x, 1i), 15546i)));
}

